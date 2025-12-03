@interface _UIPopoverLayoutInfo
- (CGRect)_effectiveViewSourceRect;
- (CGRect)containingFrame;
- (CGRect)frame;
- (CGRect)sourceViewRect;
- (CGSize)_popoverViewSizeForContentSize:(CGSize)size arrowDirection:(unint64_t)direction;
- (CGSize)preferredContentSize;
- (UIEdgeInsets)containingFrameInsets;
- (UIEdgeInsets)contentInset;
- (_UIPopoverLayoutInfo)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_updateOutputs;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateProperties:(id)properties;
@end

@implementation _UIPopoverLayoutInfo

- (_UIPopoverLayoutInfo)init
{
  v21 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = _UIPopoverLayoutInfo;
  v2 = [(_UIPopoverLayoutInfo *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v2[176] = 1;
    v2[233] = 1;
    __asm { FMOV            V0.2D, #8.0 }

    *(v2 + 8) = _Q0;
    *(v2 + 24) = _Q0;
    *(v2 + 5) = 0x4032000000000000;
    _observationKeys = [objc_opt_class() _observationKeys];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [_observationKeys countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(_observationKeys);
          }

          [(_UIPopoverLayoutInfo *)v3 addObserver:v3 forKeyPath:*(*(&v15 + 1) + 8 * v13++) options:1 context:0];
        }

        while (v11 != v13);
        v11 = [_observationKeys countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v11);
    }
  }

  return v3;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)containingFrame
{
  x = self->_containingFrame.origin.x;
  y = self->_containingFrame.origin.y;
  width = self->_containingFrame.size.width;
  height = self->_containingFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)containingFrameInsets
{
  top = self->_containingFrameInsets.top;
  left = self->_containingFrameInsets.left;
  bottom = self->_containingFrameInsets.bottom;
  right = self->_containingFrameInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)preferredContentSize
{
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)sourceViewRect
{
  x = self->_sourceViewRect.origin.x;
  y = self->_sourceViewRect.origin.y;
  width = self->_sourceViewRect.size.width;
  height = self->_sourceViewRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_updateOutputs
{
  v182[14] = *MEMORY[0x1E69E9840];
  [(_UIPopoverLayoutInfo *)self _effectiveViewSourceRect];
  v6 = v5;
  v7 = v3;
  v9 = v8;
  v10 = v4;
  top = self->_containingFrameInsets.top;
  left = self->_containingFrameInsets.left;
  v13 = self->_containingFrame.origin.x + left;
  v14 = self->_containingFrame.size.width - (left + self->_containingFrameInsets.right);
  v15 = self->_containingFrame.size.height - (top + self->_containingFrameInsets.bottom);
  v157 = v5;
  v158 = v4;
  v159 = v3;
  v160 = v8;
  v176 = v13;
  v177 = self->_containingFrame.origin.y + top;
  v174 = v14;
  v175 = v15;
  if (!self->_preferredArrowDirections)
  {
    self->_arrowDirection = 0;
    [(_UIPopoverLayoutInfo *)self _popoverViewSizeForContentSize:0 arrowDirection:self->_preferredContentSize.width, self->_preferredContentSize.height];
    v42 = v41;
    recta = v43;
    v183.origin.x = v6;
    v183.origin.y = v7;
    v183.size.width = v9;
    v183.size.height = v10;
    MidX = CGRectGetMidX(v183);
    v184.origin.x = v6;
    v184.origin.y = v7;
    v184.size.width = v9;
    v184.size.height = v10;
    MidY = CGRectGetMidY(v184);
    v45 = floor(MidX - v42 * 0.5);
    v185.size.height = recta;
    v46 = floor(MidY - recta * 0.5);
    v185.origin.x = v45;
    v185.origin.y = v46;
    v179 = v42;
    v185.size.width = v42;
    MinY = CGRectGetMinY(v185);
    v186.origin.x = v13;
    v48 = v177;
    v186.origin.y = v177;
    v186.size.width = v14;
    v186.size.height = v15;
    if (MinY < CGRectGetMinY(v186))
    {
      v187.origin.x = v13;
      v187.origin.y = v177;
      v187.size.width = v14;
      v187.size.height = v15;
      v49 = CGRectGetMinY(v187);
      v188.origin.x = v45;
      v188.origin.y = v46;
      v188.size.width = v42;
      v188.size.height = recta;
      v46 = v46 + v49 - CGRectGetMinY(v188);
    }

    v189.origin.x = v45;
    v189.origin.y = v46;
    v189.size.width = v42;
    v189.size.height = recta;
    MaxY = CGRectGetMaxY(v189);
    v190.origin.x = v13;
    v190.origin.y = v177;
    v190.size.width = v14;
    v190.size.height = v15;
    v51 = CGRectGetMaxY(v190);
    v52 = recta;
    v53 = v14;
    v54 = v15;
    if (MaxY > v51)
    {
      v55 = v45;
      v56 = v46;
      v57 = v179;
      v58 = CGRectGetMaxY(*(&v52 - 3));
      v191.origin.x = v13;
      v191.origin.y = v177;
      v191.size.width = v53;
      v191.size.height = v54;
      v59 = CGRectGetMaxY(v191);
      v52 = recta;
      v46 = v46 - (v58 - v59);
    }

    v60 = v13;
    v61 = v45;
    v62 = v46;
    v63 = v179;
    v64 = v179;
    v65 = v52;
    v220.origin.x = v60;
    v220.origin.y = v177;
    v220.size.width = v53;
    v220.size.height = v54;
    v192 = CGRectIntersection(*(&v52 - 3), v220);
    v66 = v179 - v192.size.width;
    v67 = -(v179 - v192.size.width);
    if (v192.origin.x == v45)
    {
      v68 = v67;
    }

    else
    {
      v68 = v66;
    }

    v69 = v45 + v68;
    v70 = v60;
    v71 = v177;
    v72 = v53;
    v73 = v54;
    v74 = v157;
    goto LABEL_133;
  }

  v16 = v3 + floor(v4 * 0.5);
  v17 = *MEMORY[0x1E695F058];
  v170 = *(MEMORY[0x1E695F058] + 8);
  v19 = *(MEMORY[0x1E695F058] + 16);
  v18 = *(MEMORY[0x1E695F058] + 24);
  [(_UIPopoverLayoutInfo *)self _popoverViewSizeForContentSize:4 arrowDirection:self->_preferredContentSize.width, self->_preferredContentSize.height];
  v21 = v20;
  v23 = v22;
  [(_UIPopoverLayoutInfo *)self _popoverViewSizeForContentSize:1 arrowDirection:self->_preferredContentSize.width, self->_preferredContentSize.height];
  v24 = v170;
  v25 = v19;
  v26 = v18;
  v28 = v27;
  v30 = v29;
  v31 = v6 + v9;
  v32 = v16 - floor(v23 * 0.5);
  v171 = v25;
  rect = v17;
  if ((self->_preferredArrowDirections & 4) != 0)
  {
    v33 = v6 + v9;
  }

  else
  {
    v33 = v17;
  }

  if ((self->_preferredArrowDirections & 4) == 0)
  {
    v32 = v170;
  }

  v147 = v32;
  v148 = v33;
  if ((self->_preferredArrowDirections & 4) != 0)
  {
    v34 = v21;
  }

  else
  {
    v34 = v25;
  }

  if ((self->_preferredArrowDirections & 4) != 0)
  {
    v35 = v23;
  }

  else
  {
    v35 = v26;
  }

  v145 = v35;
  v146 = v34;
  preferredHorizontalAlignment = self->_preferredHorizontalAlignment;
  if (preferredHorizontalAlignment == 1)
  {
    v37 = v26;
    v38 = v30;
    isRTL = [(_UIPopoverLayoutInfo *)self isRTL];
    v30 = v38;
    v24 = v170;
    v25 = v171;
    v26 = v37;
    v40 = v31 - v28;
    if (!isRTL)
    {
      v40 = v6;
    }
  }

  else if (preferredHorizontalAlignment == 2)
  {
    v75 = v26;
    v76 = v30;
    isRTL2 = [(_UIPopoverLayoutInfo *)self isRTL];
    v30 = v76;
    v24 = v170;
    v25 = v171;
    v26 = v75;
    v40 = v31 - v28;
    v6 = v157;
    if (isRTL2)
    {
      v40 = v157;
    }
  }

  else
  {
    v6 = v157;
    v40 = v157 + floor(v160 * 0.5) - floor(v28 * 0.5);
  }

  preferredArrowDirections = self->_preferredArrowDirections;
  v79 = rect;
  v80 = v24;
  v81 = v25;
  v82 = v26;
  if (preferredArrowDirections)
  {
    v80 = v159 + v158;
    v79 = v40;
    v81 = v28;
    v82 = v30;
  }

  v83 = 0;
  v84 = 0;
  v85 = v16 - floor(v23 * 0.5);
  if ((preferredArrowDirections & 8) != 0)
  {
    v86 = v6 - v21;
  }

  else
  {
    v86 = rect;
  }

  if ((preferredArrowDirections & 8) != 0)
  {
    v87 = v85;
  }

  else
  {
    v87 = v24;
  }

  if ((preferredArrowDirections & 8) != 0)
  {
    v88 = v21;
  }

  else
  {
    v88 = v171;
  }

  if ((preferredArrowDirections & 8) != 0)
  {
    v89 = v23;
  }

  else
  {
    v89 = v26;
  }

  v90 = (preferredArrowDirections & 2) == 0;
  preferLandscapeOrientations = self->_preferLandscapeOrientations;
  if (v90)
  {
    v92 = rect;
  }

  else
  {
    v92 = v40;
  }

  if (v90)
  {
    v93 = v24;
  }

  else
  {
    v93 = v159 - v30;
  }

  if (v90)
  {
    v94 = v171;
  }

  else
  {
    v94 = v28;
  }

  if (v90)
  {
    v95 = v26;
  }

  else
  {
    v95 = v30;
  }

  if (self->_preferLandscapeOrientations)
  {
    v96 = v148;
  }

  else
  {
    v96 = v92;
  }

  if (self->_preferLandscapeOrientations)
  {
    v97 = v147;
  }

  else
  {
    v97 = v93;
  }

  *v181 = v96;
  *&v181[1] = v97;
  if (preferLandscapeOrientations)
  {
    v98 = v146;
  }

  else
  {
    v98 = v94;
  }

  if (preferLandscapeOrientations)
  {
    v99 = v145;
  }

  else
  {
    v99 = v95;
  }

  *v182 = v98;
  *&v182[1] = v99;
  if (preferLandscapeOrientations)
  {
    v100 = v86;
  }

  else
  {
    v100 = v148;
  }

  if (preferLandscapeOrientations)
  {
    v101 = v87;
  }

  else
  {
    v101 = v147;
  }

  *&v182[2] = v100;
  *&v182[3] = v101;
  v102 = v182;
  if (preferLandscapeOrientations)
  {
    v103 = v88;
  }

  else
  {
    v103 = v146;
  }

  if (preferLandscapeOrientations)
  {
    v104 = v89;
  }

  else
  {
    v104 = v145;
  }

  v163 = v93;
  v164 = v92;
  if (preferLandscapeOrientations)
  {
    v105 = v92;
  }

  else
  {
    v105 = v79;
  }

  v106 = v26;
  if (preferLandscapeOrientations)
  {
    v107 = v93;
  }

  else
  {
    v107 = v80;
  }

  v108 = v24;
  v161 = v95;
  v162 = v94;
  if (preferLandscapeOrientations)
  {
    v109 = v94;
  }

  else
  {
    v109 = v81;
  }

  if (preferLandscapeOrientations)
  {
    v110 = v95;
  }

  else
  {
    v110 = v82;
  }

  *&v182[4] = v103;
  *&v182[5] = v104;
  v151 = v87;
  v152 = v86;
  v155 = v79;
  v156 = v80;
  if (preferLandscapeOrientations)
  {
    v111 = v79;
  }

  else
  {
    v111 = v86;
  }

  if (preferLandscapeOrientations)
  {
    v112 = v80;
  }

  else
  {
    v112 = v87;
  }

  *&v182[6] = v105;
  *&v182[7] = v107;
  v149 = v89;
  v150 = v88;
  v153 = v82;
  v154 = v81;
  if (preferLandscapeOrientations)
  {
    v113 = v81;
  }

  else
  {
    v113 = v88;
  }

  if (preferLandscapeOrientations)
  {
    v114 = v82;
  }

  else
  {
    v114 = v89;
  }

  *&v182[8] = v109;
  *&v182[9] = v110;
  *&v182[10] = v111;
  *&v182[11] = v112;
  *&v182[12] = v113;
  *&v182[13] = v114;
  v48 = v177;
  v180 = 0.0;
  v168 = v108;
  v169 = v106;
  v166 = rect;
  v167 = v106;
  v165 = v171;
  do
  {
    v115 = *(v102 - 2);
    if (self->_canOverlapSourceViewRect)
    {
      v116 = *(v102 - 1);
      v117 = *v102;
      y = v48;
      width = v174;
      height = v175;
      x = v176;
      v122 = v102[1];
      goto LABEL_118;
    }

    v116 = *(v102 - 1);
    v117 = *v102;
    v122 = v102[1];
    v193.origin.x = *(v102 - 2);
    v193.origin.y = v116;
    v193.size.width = *v102;
    v193.size.height = v122;
    v221.origin.y = v163;
    v221.origin.x = v164;
    v221.size.height = v161;
    v221.size.width = v162;
    if (CGRectEqualToRect(v193, v221))
    {
      v222.size.height = v175;
      v194.origin.x = v176;
      v194.origin.y = v48;
      v194.size.width = v174;
      v194.size.height = v159 - v177;
      v222.origin.x = v176;
      v222.origin.y = v48;
      v222.size.width = v174;
      v195 = CGRectIntersection(v194, v222);
      x = v195.origin.x;
      y = v195.origin.y;
      width = v195.size.width;
      height = v195.size.height;
      goto LABEL_118;
    }

    v196.origin.x = v115;
    v196.origin.y = v116;
    v196.size.width = v117;
    v196.size.height = v122;
    v223.origin.x = v155;
    v223.origin.y = v156;
    v223.size.height = v153;
    v223.size.width = v154;
    if (CGRectEqualToRect(v196, v223))
    {
      v197.origin.x = v157;
      v197.size.width = v160;
      v197.origin.y = v159;
      v197.size.height = v158;
      height = v175 - (CGRectGetMaxY(v197) - v48);
      v198.origin.x = v157;
      v198.origin.y = v159;
      v198.size.width = v160;
      v198.size.height = v158;
      y = CGRectGetMaxY(v198);
      x = v176;
      width = v174;
      goto LABEL_118;
    }

    v199.origin.x = v115;
    v199.origin.y = v116;
    v199.size.width = v117;
    v199.size.height = v122;
    v224.origin.y = v151;
    v224.origin.x = v152;
    v224.size.height = v149;
    v224.size.width = v150;
    if (CGRectEqualToRect(v199, v224))
    {
      v200.origin.x = v157;
      v200.size.height = v158;
      v200.origin.y = v159;
      v200.size.width = v160;
      x = v176;
      width = CGRectGetMidX(v200) - v176;
    }

    else
    {
      v201.origin.x = v115;
      v201.origin.y = v116;
      v201.size.width = v117;
      v201.size.height = v122;
      v225.origin.y = v147;
      v225.origin.x = v148;
      v225.size.height = v145;
      v225.size.width = v146;
      if (!CGRectEqualToRect(v201, v225))
      {
        x = v176;
        y = v48;
        width = v174;
        goto LABEL_117;
      }

      v202.size.height = v158;
      v202.origin.x = v157;
      v202.size.width = v160;
      v202.origin.y = v159;
      width = v174 - (CGRectGetMidX(v202) - v176);
      v203.origin.x = v157;
      v203.origin.y = v159;
      v203.size.width = v160;
      v203.size.height = v158;
      x = CGRectGetMidX(v203);
    }

    y = v48;
LABEL_117:
    height = v175;
LABEL_118:
    v204.origin.x = v115;
    v204.origin.y = v116;
    v204.size.width = v117;
    v204.size.height = v122;
    v226.origin.x = x;
    v226.origin.y = y;
    v226.size.width = width;
    v226.size.height = height;
    v205 = CGRectIntersection(v204, v226);
    if (round(v205.size.width * v205.size.height) > round(v180))
    {
      v180 = v205.size.width * v205.size.height;
      v84 = v83;
      v165 = v205.size.width;
      v166 = v205.origin.x;
      v167 = v205.size.height;
      v168 = v205.origin.y;
      v169 = height;
      v170 = y;
      v171 = width;
      rect = x;
    }

    ++v83;
    v102 += 4;
    v48 = v177;
  }

  while (v83 != 4);
  v123 = &v181[4 * v84];
  v125 = *v123;
  v124 = v123[1];
  v63 = v123[2];
  v65 = v123[3];
  v206.origin.x = *v123;
  v206.origin.y = v124;
  v206.size.width = v63;
  v206.size.height = v65;
  v227.origin.x = v155;
  v227.origin.y = v156;
  v227.size.height = v153;
  v227.size.width = v154;
  if (CGRectEqualToRect(v206, v227))
  {
    v126 = 1;
    goto LABEL_125;
  }

  v207.origin.x = v125;
  v207.origin.y = v124;
  v207.size.width = v63;
  v207.size.height = v65;
  v228.origin.y = v163;
  v228.origin.x = v164;
  v228.size.height = v161;
  v228.size.width = v162;
  if (CGRectEqualToRect(v207, v228))
  {
    v126 = 2;
LABEL_125:
    v74 = v157;
  }

  else
  {
    v218.origin.x = v125;
    v218.origin.y = v124;
    v218.size.width = v63;
    v218.size.height = v65;
    v229.origin.y = v151;
    v229.origin.x = v152;
    v229.size.height = v149;
    v229.size.width = v150;
    v74 = v157;
    if (CGRectEqualToRect(v218, v229))
    {
      v126 = 8;
    }

    else
    {
      v219.origin.x = v125;
      v219.origin.y = v124;
      v219.size.width = v63;
      v219.size.height = v65;
      v230.origin.y = v147;
      v230.origin.x = v148;
      v230.size.height = v145;
      v230.size.width = v146;
      v144 = CGRectEqualToRect(v219, v230);
      v126 = 4;
      if (!v144)
      {
        v126 = 1;
      }
    }
  }

  self->_arrowDirection = v126;
  if (v166 <= v125)
  {
    v69 = v125 - (v63 - v165);
  }

  else
  {
    v69 = v166;
  }

  if (v168 <= v124)
  {
    v46 = v124 - (v65 - v167);
  }

  else
  {
    v46 = v168;
  }

  v73 = v169;
  v71 = v170;
  v72 = v171;
  v70 = rect;
LABEL_133:
  v127 = v46;
  v128 = v63;
  v129 = v65;
  v208 = CGRectIntersection(*&v70, *&v69);
  v130 = v208.origin.x;
  v131 = v208.origin.y;
  v132 = v208.size.width;
  v133 = v208.size.height;
  IsEmpty = CGRectIsEmpty(v208);
  if (IsEmpty)
  {
    self->_arrowDirection = 0;
    goto LABEL_135;
  }

  arrowDirection = self->_arrowDirection;
  if (arrowDirection - 1 < 2)
  {
    v211.origin.x = v74;
    v211.origin.y = v159;
    v211.size.width = v160;
    v211.size.height = v158;
    v138 = CGRectGetMidX(v211);
    v212.origin.x = v130;
    v212.origin.y = v131;
    v212.size.width = v132;
    v212.size.height = v133;
    offset = v138 - CGRectGetMidX(v212);
  }

  else if (arrowDirection == 4 || arrowDirection == 8)
  {
    v209.origin.x = v130;
    v209.origin.y = v131;
    v209.size.width = v132;
    v209.size.height = v133;
    v137 = CGRectGetMidY(v209);
    v210.origin.x = v74;
    v210.origin.y = v159;
    v210.size.width = v160;
    v210.size.height = v158;
    offset = -(v137 - CGRectGetMidY(v210));
  }

  else
  {
LABEL_135:
    offset = self->_offset;
  }

  self->_offset = round(offset + self->_arrowOffset);
  if (IsEmpty)
  {
    v213.origin.x = v74;
    v213.origin.y = v159;
    v139 = v160;
    v213.size.width = v160;
    v213.size.height = v158;
    if (!CGRectIsNull(v213))
    {
      if (v174 < v160)
      {
        v139 = v174;
      }

      if (v175 >= v158)
      {
        v140 = v158;
      }

      else
      {
        v140 = v175;
      }

      v214.origin.x = v176;
      v214.origin.y = v48;
      v214.size.width = v174;
      v214.size.height = v175;
      MinX = CGRectGetMinX(v214);
      v215.origin.x = v176;
      v215.origin.y = v48;
      v215.size.width = v174;
      v215.size.height = v175;
      v74 = fmax(MinX, fmin(v74, CGRectGetMaxX(v215) - v139));
      v216.origin.x = v176;
      v216.origin.y = v48;
      v216.size.width = v174;
      v216.size.height = v175;
      v142 = CGRectGetMinY(v216);
      v217.origin.x = v176;
      v217.origin.y = v48;
      v217.size.width = v174;
      v217.size.height = v175;
      v159 = fmax(v142, fmin(v159, CGRectGetMaxY(v217) - v140));
    }

    v132 = self->_preferredContentSize.width;
    v133 = self->_preferredContentSize.height;
    v143 = v159;
  }

  else
  {
    v74 = round(v130);
    v143 = round(v131);
  }

  self->_frame.origin.x = v74;
  self->_frame.origin.y = v143;
  self->_frame.size.width = v132;
  self->_frame.size.height = v133;
}

- (CGRect)_effectiveViewSourceRect
{
  x = self->_sourceViewRect.origin.x;
  y = self->_sourceViewRect.origin.y;
  width = self->_sourceViewRect.size.width;
  height = self->_sourceViewRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  _observationKeys = [objc_opt_class() _observationKeys];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [_observationKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(_observationKeys);
        }

        [(_UIPopoverLayoutInfo *)self removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [_observationKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = _UIPopoverLayoutInfo;
  [(_UIPopoverLayoutInfo *)&v8 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 _setUpdatesEnabled:0];
  [v4 setContentInset:{self->_contentInset.top, self->_contentInset.left, self->_contentInset.bottom, self->_contentInset.right}];
  [v4 setArrowHeight:self->_arrowHeight];
  [v4 setArrowOffset:self->_arrowOffset];
  [v4 setPreferredContentSize:{self->_preferredContentSize.width, self->_preferredContentSize.height}];
  [v4 setPreferredArrowDirections:self->_preferredArrowDirections];
  [v4 setContainingFrame:{self->_containingFrame.origin.x, self->_containingFrame.origin.y, self->_containingFrame.size.width, self->_containingFrame.size.height}];
  [v4 setContainingFrameInsets:{self->_containingFrameInsets.top, self->_containingFrameInsets.left, self->_containingFrameInsets.bottom, self->_containingFrameInsets.right}];
  [v4 setSourceViewRect:{self->_sourceViewRect.origin.x, self->_sourceViewRect.origin.y, self->_sourceViewRect.size.width, self->_sourceViewRect.size.height}];
  [v4 setCanOverlapSourceViewRect:self->_canOverlapSourceViewRect];
  [v4 setPreferLandscapeOrientations:self->_preferLandscapeOrientations];
  [v4 setPreferredHorizontalAlignment:self->_preferredHorizontalAlignment];
  [v4 setIsRTL:self->_isRTL];
  [v4 _setUpdatesEnabled:1];
  [v4 _updateOutputs];
  return v4;
}

- (id)description
{
  v20 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v19 = NSStringFromClass(v4);
  v18 = NSStringFromSelector(a2);
  [(_UIPopoverLayoutInfo *)self preferredContentSize];
  v5 = NSStringFromCGSize(v22);
  v6 = NSStringFromPopoverArrowDirection([(_UIPopoverLayoutInfo *)self preferredArrowDirections]);
  [(_UIPopoverLayoutInfo *)self containingFrame];
  v7 = NSStringFromCGRect(v23);
  [(_UIPopoverLayoutInfo *)self containingFrameInsets];
  v8 = NSStringFromUIEdgeInsets(v24);
  [(_UIPopoverLayoutInfo *)self sourceViewRect];
  v9 = NSStringFromCGRect(v25);
  if ([(_UIPopoverLayoutInfo *)self canOverlapSourceViewRect])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if ([(_UIPopoverLayoutInfo *)self preferLandscapeOrientations])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [(_UIPopoverLayoutInfo *)self frame];
  v12 = NSStringFromCGRect(v26);
  [(_UIPopoverLayoutInfo *)self offset];
  v14 = v13;
  v15 = NSStringFromPopoverArrowDirection([(_UIPopoverLayoutInfo *)self arrowDirection]);
  v16 = [v20 stringWithFormat:@"[<%@ %p> %@]: INPUTS: preferredContentSize: %@, preferredArrowDirections: %@, containingFrame: %@, containingFrameInsets: %@, targetRect: %@, canOverlapSourceViewRect: %@, preferLandscapeOrientations: %@     OUTPUTS: frame: %@, offset: %f, arrowDirection: %@, candidates: %@", v19, self, v18, v5, v6, v7, v8, v9, v10, v11, v12, v14, v15, self->_candidates];

  return v16;
}

- (void)updateProperties:(id)properties
{
  propertiesCopy = properties;
  [(_UIPopoverLayoutInfo *)self _setUpdatesEnabled:0];
  propertiesCopy[2](propertiesCopy);

  [(_UIPopoverLayoutInfo *)self _setUpdatesEnabled:1];

  [(_UIPopoverLayoutInfo *)self _updateOutputs];
}

- (CGSize)_popoverViewSizeForContentSize:(CGSize)size arrowDirection:(unint64_t)direction
{
  v6 = *MEMORY[0x1E695F060];
  v7 = *(MEMORY[0x1E695F060] + 8);
  if (direction > 3)
  {
    if (direction != 4)
    {
      v10 = *(MEMORY[0x1E695F060] + 8);
      v8 = *MEMORY[0x1E695F060];
      if (direction != 8)
      {
        goto LABEL_11;
      }
    }

    right = self->_contentInset.right;
    v12 = size.width + self->_arrowHeight + self->_contentInset.left;
LABEL_9:
    v8 = v12 + right;
    height = size.height;
    goto LABEL_10;
  }

  if (direction - 1 >= 2)
  {
    v10 = *(MEMORY[0x1E695F060] + 8);
    v8 = *MEMORY[0x1E695F060];
    if (direction)
    {
      goto LABEL_11;
    }

    v12 = size.width + self->_contentInset.left;
    right = self->_contentInset.right;
    goto LABEL_9;
  }

  v8 = size.width + self->_contentInset.left + self->_contentInset.right;
  height = size.height + self->_arrowHeight;
LABEL_10:
  v10 = height + self->_contentInset.top + self->_contentInset.bottom;
LABEL_11:
  if ((size.width != v6 || size.height != v7) && v8 == v6 && v10 == v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPopoverLayoutInfo.m" lineNumber:197 description:@"Unknown direction passed to _popoverViewSizeForContentSize:arrowDirection:"];
  }

  v16 = v8;
  v17 = v10;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (self->_updatesEnabled)
  {
    [(_UIPopoverLayoutInfo *)self _updateOutputs:path];
  }
}

@end