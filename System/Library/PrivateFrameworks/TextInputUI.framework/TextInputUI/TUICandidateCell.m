@interface TUICandidateCell
+ (UIEdgeInsets)outsetsForText:(id)a3 font:(id)a4;
+ (double)widthForCandidate:(id)a3 showCandidateNumber:(BOOL)a4 style:(id)a5;
+ (double)widthForText:(id)a3 font:(id)a4 layoutOrientation:(int64_t)a5;
- (TUICandidateCell)initWithCoder:(id)a3;
- (TUICandidateCell)initWithFrame:(CGRect)a3;
- (TUICandidateLabel)alternativeTextLabel;
- (TUICandidateLabel)annotationTextLabel;
- (TUICandidateLabel)textLabel;
- (UILabel)candidateNumberLabel;
- (id)cellBackgroundColor;
- (id)cellBackgroundImage;
- (void)_computeImageViewFrame;
- (void)applyLayoutAttributes:(id)a3;
- (void)commonInit;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)rotateBy90DegreesForFrame:(CGRect *)a3;
- (void)setAlignment:(int64_t)a3;
- (void)setCandidate:(id)a3;
- (void)setCandidateNumber:(unint64_t)a3;
- (void)setCustomView:(id)a3;
- (void)setImage:(id)a3;
- (void)setRowSelected:(BOOL)a3;
- (void)setShouldShowCandidateNumber:(BOOL)a3;
- (void)setStyle:(id)a3;
- (void)updateColors;
- (void)updateLabels;
- (void)updateStyle;
@end

@implementation TUICandidateCell

- (id)cellBackgroundColor
{
  if (([(TUICandidateCell *)self isSelected]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(TUICandidateCell *)self isHighlighted];
  }

  v4 = [(TUICandidateCell *)self candidate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) != 0 && (-[TUICandidateCell candidate](self, "candidate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isTransliterationCandidate], v6, !(v3 & 1 | ((v7 & 1) == 0))))
  {
    v9 = [(TUICandidateBaseCell *)self style];
    v8 = [v9 transliterationCandidateBackgroundColor];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TUICandidateCell;
    v8 = [(TUICandidateBaseCell *)&v11 cellBackgroundColor];
  }

  return v8;
}

- (id)cellBackgroundImage
{
  if (([(TUICandidateCell *)self isSelected]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(TUICandidateCell *)self isHighlighted];
  }

  v4 = [(TUICandidateCell *)self candidate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) != 0 && (-[TUICandidateCell candidate](self, "candidate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isTransliterationCandidate], v6, !(v3 & 1 | ((v7 & 1) == 0))))
  {
    v9 = [(TUICandidateBaseCell *)self style];
    v8 = [v9 transliterationCandidateBackgroundImage];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TUICandidateCell;
    v8 = [(TUICandidateBaseCell *)&v11 cellBackgroundImage];
  }

  return v8;
}

- (void)updateColors
{
  v22.receiver = self;
  v22.super_class = TUICandidateCell;
  [(TUICandidateBaseCell *)&v22 updateColors];
  if (([(TUICandidateCell *)self isSelected]& 1) != 0 || ([(TUICandidateCell *)self isHighlighted]& 1) != 0)
  {
    v3 = [(TUICandidateBaseCell *)self style];
    v4 = [v3 highlightedTextColor];
    [(TUICandidateLabel *)self->_textLabel setTextColor:v4];

    v5 = [(TUICandidateBaseCell *)self style];
    v6 = [v5 highlightedCandidateNumberColor];
    [(UILabel *)self->_candidateNumberLabel setTextColor:v6];

    v7 = [(TUICandidateBaseCell *)self style];
    v8 = [v7 highlightedAlternativeTextColor];
    [(TUICandidateLabel *)self->_alternativeTextLabel setTextColor:v8];

    v9 = [(TUICandidateBaseCell *)self style];
    v10 = [v9 highlightedTextColor];
  }

  else
  {
    v11 = [(TUICandidateBaseCell *)self style];
    v12 = [v11 textColor];
    [(TUICandidateLabel *)self->_textLabel setTextColor:v12];

    v13 = [(TUICandidateBaseCell *)self style];
    v14 = [v13 candidateNumberColor];
    [(UILabel *)self->_candidateNumberLabel setTextColor:v14];

    v15 = [(TUICandidateBaseCell *)self style];
    v16 = [v15 alternativeTextColor];
    [(TUICandidateLabel *)self->_alternativeTextLabel setTextColor:v16];

    v9 = [(TUICandidateBaseCell *)self style];
    v10 = [v9 textColor];
  }

  v17 = v10;
  [(TUICandidateLabel *)self->_annotationTextLabel setTextColor:v10];

  v18 = [(TUICandidateBaseCell *)self style];
  if (objc_opt_respondsToSelector())
  {
    v19 = [(TUICandidateBaseCell *)self style];
    v20 = [v19 showCellBorderForSpaceConfirmationCandidate];

    if (!v20)
    {
      return;
    }

    v18 = [(TUICandidateCell *)self layer];
    [v18 setBorderWidth:0.0];
    if (([(TUICandidateCell *)self isHighlighted]& 1) == 0)
    {
      if ([(TUICandidateCell *)self isSelected])
      {
        [v18 setBorderWidth:1.0];
        v21 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [v18 setBorderColor:{objc_msgSend(v21, "CGColor")}];
      }
    }
  }
}

- (void)rotateBy90DegreesForFrame:(CGRect *)a3
{
  v3 = vextq_s8(a3->size, a3->size, 8uLL);
  a3->origin = vextq_s8(a3->origin, a3->origin, 8uLL);
  a3->size = v3;
}

- (void)updateLabels
{
  v3 = [(TUICandidateCell *)self candidate];

  if (!v3)
  {
    return;
  }

  [(TUICandidateCell *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(TUICandidateBaseCell *)self style];
  [v12 extraCellPadding];
  x = v5 + v13;
  y = v7 + v15;
  width = v9 - (v13 + v17);
  v162.origin.x = x;
  v162.origin.y = y;
  height = v11 - (v15 + v19);
  v162.size.width = width;
  v162.size.height = height;

  v21 = [(TUICandidateBaseCell *)self style];
  v22 = [v21 layoutOrientation];

  if (v22 == 1)
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
  v24 = [(TUICandidateBaseCell *)self style];
  [v24 minimumCellPadding];
  v26 = v25;

  MinY = CGRectGetMinY(v162);
  v28 = objc_opt_class();
  v29 = [(TUICandidateLabel *)self->_textLabel text];
  v30 = [(TUICandidateLabel *)self->_textLabel font];
  v31 = [(TUICandidateBaseCell *)self style];
  [v28 widthForText:v29 font:v30 layoutOrientation:{objc_msgSend(v31, "layoutOrientation")}];
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
  v38 = [(UILabel *)self->_candidateNumberLabel text];
  v39 = [(UILabel *)self->_candidateNumberLabel font];
  [v38 tui_optimizedSizeWithFont:v39];
  v157 = 0.0;
  v158 = v37;
  v159 = v40;
  rect = v23;

  v141 = CGRectGetMinY(v162);
  v41 = objc_opt_class();
  v42 = [(TUICandidateLabel *)self->_alternativeTextLabel text];
  v43 = [(TUICandidateLabel *)self->_alternativeTextLabel font];
  v44 = [(TUICandidateBaseCell *)self style];
  [v41 widthForText:v42 font:v43 layoutOrientation:{objc_msgSend(v44, "layoutOrientation")}];
  v139 = v45;
  v153 = 0.0;
  v154 = v141;
  v155 = v45;
  v135 = v23;
  v156 = v23;

  v46 = CGRectGetMinY(v162);
  v47 = [(TUICandidateLabel *)self->_annotationTextLabel text];
  v48 = [(TUICandidateLabel *)self->_annotationTextLabel font];
  [v47 tui_optimizedSizeWithFont:v48];
  v50 = v49;
  v51 = [(TUICandidateLabel *)self->_annotationTextLabel font];
  [v51 lineHeight];
  v149 = 0.0;
  v150 = v46;
  v151 = v50;
  v144 = v52;
  v152 = v52;

  v53 = [(TUICandidateCell *)self imageView];
  [v53 frame];
  v55 = v54;
  v57 = v56;
  v142 = v58;
  v143 = v59;
  v145 = v58;
  v146 = v59;
  v147 = v54;
  v148 = v56;

  v60 = [(TUICandidateCell *)self image];
  v61 = v161.size.width <= 0.00000011920929 || v60 == 0;
  v62 = 6.0;
  if (v61)
  {
    v62 = 0.0;
  }

  v136 = v62;

  v63 = [(UILabel *)self->_candidateNumberLabel text];
  v64 = [v63 length];

  if (v64)
  {
    v65 = [(TUICandidateBaseCell *)self style];
    v66 = [v65 layoutOrientation];

    v67 = [(TUICandidateBaseCell *)self style];
    v68 = [v67 candidateNumberFont];
    [@"0" _legacy_sizeWithFont:v68];
    if (v66)
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
    v75 = [(TUICandidateBaseCell *)self style];
    v76 = objc_opt_respondsToSelector();

    if (v76)
    {
      v77 = [(TUICandidateBaseCell *)self style];
      [v77 alternativeTextLeftSpacing];
      v74 = v74 + v78;
    }

    else
    {
      v74 = v74 + 5.0;
    }
  }

  rect = v135;
  v156 = v135;
  v79 = [(TUICandidateBaseCell *)self style];
  v80 = [v79 layoutOrientation];

  if (v80 == 1)
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
      v92 = [(TUICandidateBaseCell *)self style];
      v93 = objc_opt_respondsToSelector();

      if (v93)
      {
        v94 = [(TUICandidateBaseCell *)self style];
        [v94 alternativeTextLeftSpacing];
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
    v99 = [(TUICandidateBaseCell *)self style];
    v100 = [v99 alternativeTextAlignment] == 2;
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
    v114 = [(TUICandidateLabel *)self->_textLabel text];
    v115 = [(TUICandidateLabel *)self->_textLabel font];
    [v113 outsetsForText:v114 font:v115];
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
      v118 = [(TUICandidateBaseCell *)self style];
      v119 = objc_opt_respondsToSelector();

      if (v119)
      {
        v120 = [(TUICandidateBaseCell *)self style];
        [v120 alternativeTextLeftSpacing];
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
    v106 = [(TUICandidateBaseCell *)self style];
    if (objc_opt_respondsToSelector())
    {
      v107 = [(TUICandidateBaseCell *)self style];
      v108 = [v107 alternativeTextAlignment];

      v109 = v141;
      if (v108 == 2)
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
    v122 = [(TUICandidateBaseCell *)self style];
    v123 = objc_opt_respondsToSelector();

    v190.origin.x = v153;
    v190.origin.y = v109;
    v190.size.width = v82;
    v190.size.height = v135;
    v124 = CGRectGetWidth(v190);
    if (v123)
    {
      v125 = [(TUICandidateBaseCell *)self style];
      [v125 alternativeTextLeftSpacing];
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
  v128 = [(TUICandidateBaseCell *)self style];
  v129 = [v128 layoutOrientation];

  if (v129 == 1)
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
    v5 = [(TUICandidateBaseCell *)self style];
    v6 = [v5 candidateNumberFont];
    [(UILabel *)self->_candidateNumberLabel setFont:v6];
  }

  if (self->_annotationTextLabel)
  {
    v7 = [(TUICandidateBaseCell *)self style];
    v8 = [v7 annotationTextFont];
    [(TUICandidateLabel *)self->_annotationTextLabel setFont:v8];
  }

  if (self->_alternativeTextLabel)
  {
    v9 = [(TUICandidateBaseCell *)self style];
    v10 = [v9 alternativeTextFont];
    [(TUICandidateLabel *)self->_alternativeTextLabel setFont:v10];

    v11 = [(TUICandidateBaseCell *)self style];
    -[TUICandidateLabel setLayoutOrientation:](self->_alternativeTextLabel, "setLayoutOrientation:", [v11 layoutOrientation]);
  }

  v12 = [(TUICandidateBaseCell *)self style];
  v13 = [v12 layoutOrientation];
  v14 = [(TUICandidateCell *)self textLabel];
  [v14 setLayoutOrientation:v13];

  v15 = [(TUICandidateBaseCell *)self style];
  v16 = [v15 lineBreakMode];
  v17 = [(TUICandidateCell *)self textLabel];
  [v17 setLineBreakMode:v16];

  v18 = [(TUICandidateCell *)self candidate];
  v19 = [v18 isSupplementalItemCandidate];
  if (v19 && (-[TUICandidateBaseCell style](self, "style"), v34 = objc_claimAutoreleasedReturnValue(), [v34 supplementalLexiconCandidateFont], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v21 = v20;
    v2 = [(TUICandidateBaseCell *)self style];
    v22 = [v2 supplementalLexiconCandidateFont];
    v23 = 0;
    v24 = 1;
  }

  else
  {
    v3 = [(TUICandidateBaseCell *)self style];
    v22 = [v3 candidateFont];
    v24 = 0;
    v21 = 0;
    v23 = 1;
  }

  v25 = [(TUICandidateCell *)self textLabel];
  [v25 setFont:v22];

  if (v23)
  {
  }

  if (v24)
  {
  }

  if (v19)
  {
  }

  v26 = [(TUICandidateCell *)self textLabel];
  v27 = [v26 font];
  [v27 pointSize];
  v29 = 16.0 / v28;

  if (v29 > 0.9)
  {
    v29 = 0.9;
  }

  v30 = [(TUICandidateCell *)self textLabel];
  [v30 setMinimumScaleFactor:v29];

  v35 = [(TUICandidateBaseCell *)self style];
  [v35 cellCornerRadius];
  v32 = v31;
  v33 = [(TUICandidateCell *)self layer];
  [v33 setCornerRadius:v32];
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
    v4 = [(TUICandidateCell *)self image];
    [v4 size];

    v5 = [(TUICandidateBaseCell *)self style];
    if (objc_opt_respondsToSelector())
    {
      v6 = [(TUICandidateBaseCell *)self style];
      [v6 maximumIconWidth];
    }

    [(TUICandidateCell *)self bounds];
    v7 = [(TUICandidateBaseCell *)self style];
    [v7 extraCellPadding];
    UIRectCenteredYInRect();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = [(TUICandidateCell *)self imageView];
    [v16 setFrame:{v9, v11, v13, v15}];
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v8.receiver = self;
  v8.super_class = TUICandidateCell;
  v4 = a3;
  [(TUICandidateCell *)&v8 applyLayoutAttributes:v4];
  [v4 contentAlpha];
  v6 = v5;

  v7 = [(TUICandidateCell *)self contentView];
  [v7 setAlpha:v6];

  [(TUICandidateCell *)self layoutIfNeeded];
}

- (void)setStyle:(id)a3
{
  v4 = a3;
  v5 = [(TUICandidateBaseCell *)self style];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = TUICandidateCell;
    [(TUICandidateBaseCell *)&v7 setStyle:v4];
    [(TUICandidateCell *)self setNeedsLayout];
  }
}

- (void)setAlignment:(int64_t)a3
{
  if (self->_alignment != a3)
  {
    self->_alignment = a3;
    [(TUICandidateCell *)self setNeedsLayout];
  }
}

- (void)setRowSelected:(BOOL)a3
{
  if (self->_rowSelected != a3)
  {
    self->_rowSelected = a3;
    [(TUICandidateCell *)self updateColors];
  }
}

- (void)setShouldShowCandidateNumber:(BOOL)a3
{
  if (self->_shouldShowCandidateNumber != a3)
  {
    v3 = a3;
    self->_shouldShowCandidateNumber = a3;
    v5 = [(TUICandidateCell *)self candidateNumberLabel];
    [v5 setHidden:!v3];

    if (!self->_shouldShowCandidateNumber)
    {
      v6 = [(TUICandidateBaseCell *)self style];
      v7 = [v6 layoutOrientation];

      if (v7 == 1)
      {
        v8 = [(TUICandidateCell *)self candidateNumberLabel];
        [v8 setText:0];

        [(TUICandidateCell *)self setNeedsLayout];
      }
    }
  }
}

- (void)setCandidateNumber:(unint64_t)a3
{
  if (self->_candidateNumber != a3)
  {
    self->_candidateNumber = a3;
    if (a3 - 1 > 8)
    {
      if ([(TUICandidateCell *)self shouldShowCandidateNumber])
      {
        v6 = [(TUICandidateBaseCell *)self style];
        v7 = [v6 layoutOrientation];

        if (v7 == 1)
        {
          v8 = @" ";
        }

        else
        {
          v8 = 0;
        }

        v10 = v8;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
      v10 = [v5 stringValue];
    }

    v9 = [(TUICandidateCell *)self candidateNumberLabel];
    [v9 setText:v10];

    [(TUICandidateCell *)self setNeedsLayout];
  }
}

- (void)setCandidate:(id)a3
{
  v5 = a3;
  candidate = self->_candidate;
  if (candidate == v5)
  {
    goto LABEL_22;
  }

  v24 = v5;
  if (([(TIKeyboardCandidate *)candidate isEqual:?]& 1) != 0)
  {
    goto LABEL_22;
  }

  objc_storeStrong(&self->_candidate, a3);
  if (objc_opt_respondsToSelector())
  {
    v7 = [(TIKeyboardCandidate *)v24 icon];
    [(TUICandidateCell *)self setImage:v7];
  }

  v8 = [(TIKeyboardCandidate *)v24 label];
  if ([v8 length])
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

  v11 = [(TIKeyboardCandidate *)v24 label];
  v12 = [(TUICandidateCell *)self textLabel];
  [v12 setText:v11];

  v10 = v24;
LABEL_9:
  v13 = [(TIKeyboardCandidate *)v10 alternativeText];
  if ([v13 length])
  {

LABEL_12:
    v16 = [(TIKeyboardCandidate *)v24 alternativeText];
    v17 = [(TUICandidateCell *)self alternativeTextLabel];
    [v17 setText:v16];

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
  v18 = [(TIKeyboardCandidate *)v15 annotationText];
  v19 = [v18 length];

  if (v19)
  {
    v20 = [(TIKeyboardCandidate *)v24 annotationText];
    v21 = UIKeyboardLocalizedString();
  }

  else
  {
    v21 = 0;
  }

  if ([v21 length] || self->_annotationTextLabel)
  {
    v22 = [(TUICandidateCell *)self annotationTextLabel];
    [v22 setText:v21];
  }

  if (objc_opt_respondsToSelector())
  {
    v23 = [(TIKeyboardCandidate *)v24 customView];
    [(TUICandidateCell *)self setCustomView:v23];
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
    v7 = [(TUICandidateCell *)self contentView];
    [v7 addSubview:self->_annotationTextLabel];

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
    v7 = [(TUICandidateCell *)self contentView];
    [v7 addSubview:self->_candidateNumberLabel];

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
    v7 = [(TUICandidateBaseCell *)self style];
    -[TUICandidateLabel setLayoutOrientation:](self->_alternativeTextLabel, "setLayoutOrientation:", [v7 layoutOrientation]);

    v8 = [(TUICandidateCell *)self contentView];
    [v8 addSubview:self->_alternativeTextLabel];

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
    v7 = [(TUICandidateBaseCell *)self style];
    -[TUICandidateLabel setLineBreakMode:](self->_textLabel, "setLineBreakMode:", [v7 lineBreakMode]);

    v8 = [(TUICandidateBaseCell *)self style];
    -[TUICandidateLabel setLayoutOrientation:](self->_textLabel, "setLayoutOrientation:", [v8 layoutOrientation]);

    v9 = [(TUICandidateCell *)self contentView];
    [v9 addSubview:self->_textLabel];

    textLabel = self->_textLabel;
  }

  return textLabel;
}

- (void)setCustomView:(id)a3
{
  v9 = a3;
  v5 = [(TUICandidateCell *)self customView];

  v6 = v9;
  if (v5 != v9)
  {
    v7 = self->_customView;
    objc_storeStrong(&self->_customView, a3);
    [(UIView *)v7 removeFromSuperview];
    if (v9)
    {
      v8 = [(TUICandidateCell *)self contentView];
      [v8 addSubview:v9];

      [(TUICandidateCell *)self setNeedsLayout];
    }

    v6 = v9;
  }
}

- (void)setImage:(id)a3
{
  v13 = a3;
  v4 = [(TUICandidateCell *)self image];

  v6 = v13;
  if (v4 != v13)
  {
    imageView = self->_imageView;
    if (v13)
    {
      if (!imageView)
      {
        v8 = objc_alloc(MEMORY[0x1E69DCAE0]);
        v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v10 = self->_imageView;
        self->_imageView = v9;

        v11 = [(TUICandidateCell *)self contentView];
        [v11 addSubview:self->_imageView];

        imageView = self->_imageView;
      }

      [(UIImageView *)imageView setImage:v13];
      v5 = [(TUICandidateCell *)self setNeedsLayout];
    }

    else
    {
      [(UIImageView *)imageView removeFromSuperview];
      v12 = self->_imageView;
      self->_imageView = 0;
    }

    v6 = v13;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (TUICandidateCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TUICandidateCell;
  v3 = [(TUICandidateCell *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateCell *)v3 commonInit];
  }

  return v4;
}

- (TUICandidateCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TUICandidateCell;
  v3 = [(TUICandidateBaseCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

+ (UIEdgeInsets)outsetsForText:(id)a3 font:(id)a4
{
  [a3 tui_languageAwareOutsetsForFont:a4];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

+ (double)widthForText:(id)a3 font:(id)a4 layoutOrientation:(int64_t)a5
{
  if (a5)
  {
    [TUICandidateLabel lineWidthForText:a3 font:a4 layoutOrientation:a5];
  }

  else
  {
    [a3 tui_optimizedSizeWithFont:a4];
  }

  v8 = v7;
  [objc_opt_class() outsetsForText:a3 font:a4];
  v10 = v9;
  v12 = v11;

  return v8 + ceil(v10 + v12);
}

+ (double)widthForCandidate:(id)a3 showCandidateNumber:(BOOL)a4 style:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  if ([v7 isSupplementalItemCandidate] && (objc_msgSend(v8, "supplementalLexiconCandidateFont"), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = [v8 supplementalLexiconCandidateFont];
  }

  else
  {
    v11 = [v8 candidateFont];
  }

  v12 = objc_opt_class();
  v13 = [v7 label];
  [v12 widthForText:v13 font:v11 layoutOrientation:{objc_msgSend(v8, "layoutOrientation")}];
  v15 = v14;

  v16 = objc_opt_class();
  v17 = [v7 alternativeText];
  v18 = [v8 alternativeTextFont];
  [v16 widthForText:v17 font:v18 layoutOrientation:{objc_msgSend(v8, "layoutOrientation")}];
  v20 = v19;

  v21 = objc_opt_class();
  v22 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringInDeviceLanguageForKey:@"CREATE_POLL"];
  [v21 widthForText:v23 font:v11 layoutOrientation:{objc_msgSend(v8, "layoutOrientation")}];
  v25 = v24;

  v26 = [v7 annotationText];
  v27 = [v26 length];

  if (v27)
  {
    v28 = [v7 annotationText];
    v29 = UIKeyboardLocalizedString();
    v30 = [v8 annotationTextFont];
    [v29 tui_optimizedSizeWithFont:v30];
    v32 = v31;
  }

  else
  {
    v32 = *MEMORY[0x1E695F060];
  }

  if (([v7 candidateProperty] & 0x80) == 0)
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
        [v8 alternativeTextLeftSpacing];
      }

      v25 = v15 + v20 + v34;
    }
  }

  [v8 minimumCellPadding];
  v36 = v25 + v35 * 2.0;
  if (v32 <= 0.0)
  {
    v37 = v36;
  }

  else
  {
    v37 = v32 + 5.0 + v36;
  }

  if (v6)
  {
    v38 = [v8 layoutOrientation];
    v39 = [v8 candidateNumberFont];
    [@"0" _legacy_sizeWithFont:v39];
    v41 = v40;
    v43 = v42;

    if (v38)
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
    v44 = [v7 icon];

    if (v44)
    {
      v45 = [v7 icon];
      [v45 size];
      v47 = v46;

      v48 = objc_opt_respondsToSelector();
      v49 = 20.0;
      if (v48)
      {
        [v8 maximumIconWidth];
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
    v50 = [v7 customView];

    if (v50)
    {
      v51 = [v7 customView];
      [v51 intrinsicContentSize];
      v37 = v52;
    }
  }

  [v8 minimumCellWidth];
  if (v37 < v53)
  {
    v37 = v53;
  }

  return v37;
}

@end