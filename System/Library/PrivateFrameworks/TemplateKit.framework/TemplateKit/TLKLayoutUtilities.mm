@interface TLKLayoutUtilities
+ (BOOL)isLTR;
+ (BOOL)isSuperLargeAccessibilitySize;
+ (BOOL)isWideScreen;
+ (BOOL)viewIsVisible:(id)a3;
+ (CGRect)deviceScaledRoundedRect:(CGRect)a3 forView:(id)a4;
+ (CGSize)deviceScaledRoundedSize:(CGSize)a3 forView:(id)a4;
+ (CGSize)idealImageSizeWithSize:(CGSize)result fittingSize:(CGSize)a4;
+ (CGSize)maxThumbnailSize;
+ (CGSize)maxThumbnailSizeIsCompactWidth:(BOOL)a3;
+ (CGSize)minimumButtonSize;
+ (UIEdgeInsets)deviceScaledRoundedInsets:(UIEdgeInsets)a3 forView:(id)a4;
+ (double)contentHeightOfTableView:(id)a3 forWidth:(double)a4 maxHeight:(double)a5;
+ (double)deviceScaledFlooredValue:(double)a3 forView:(id)a4;
+ (double)deviceScaledRoundedValue:(double)a3 forView:(id)a4;
+ (double)scaledValueForValue:(double)a3 withFont:(id)a4 view:(id)a5;
+ (id)controlsInView:(id)a3;
+ (id)tappableControlViewForPoint:(CGPoint)a3 inView:(id)a4 withEvent:(id)a5;
+ (void)applyRowBoundedSizingToImageView:(id)a3 isCompactWidth:(BOOL)a4;
+ (void)requireIntrinsicSizeForView:(id)a3 withPriority:(float)a4;
+ (void)setDynamicBaselineAlignmentsForLabel:(id)a3 top:(double)a4 bottom:(double)a5 view:(id)a6;
@end

@implementation TLKLayoutUtilities

+ (BOOL)isSuperLargeAccessibilitySize
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 preferredContentSizeCategory];
  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

  return IsAccessibilityContentSizeCategory;
}

+ (BOOL)isLTR
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection] == 0;

  return v3;
}

+ (BOOL)isWideScreen
{
  if (isWideScreen_onceToken != -1)
  {
    +[TLKLayoutUtilities isWideScreen];
  }

  return isWideScreen_isWideScreen;
}

void __34__TLKLayoutUtilities_isWideScreen__block_invoke()
{
  if (+[TLKUtilities isRenderingForRemoteDevice])
  {
    isWideScreen_isWideScreen = 1;
  }

  else
  {
    v0 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v0 _referenceBounds];
    isWideScreen_isWideScreen = CGRectGetHeight(v2) > 568.0;
  }
}

+ (void)requireIntrinsicSizeForView:(id)a3 withPriority:(float)a4
{
  v9 = a3;
  *&v5 = a4;
  [v9 setContentCompressionResistancePriority:0 forAxis:v5];
  *&v6 = a4;
  [v9 setContentCompressionResistancePriority:1 forAxis:v6];
  *&v7 = a4;
  [v9 setContentHuggingPriority:0 forAxis:v7];
  *&v8 = a4;
  [v9 setContentHuggingPriority:1 forAxis:v8];
}

+ (double)deviceScaledRoundedValue:(double)a3 forView:(id)a4
{
  v4 = [a4 tlks_screen];
  UIRoundToScreenScale();
  v6 = v5;

  return v6;
}

+ (CGRect)deviceScaledRoundedRect:(CGRect)a3 forView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  [a1 deviceScaledRoundedValue:v9 forView:x];
  v11 = v10;
  [a1 deviceScaledRoundedValue:v9 forView:y];
  v13 = v12;
  [a1 deviceScaledRoundedValue:v9 forView:width];
  v15 = v14;
  [a1 deviceScaledRoundedValue:v9 forView:height];
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

+ (UIEdgeInsets)deviceScaledRoundedInsets:(UIEdgeInsets)a3 forView:(id)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v9 = a4;
  [a1 deviceScaledRoundedValue:v9 forView:top];
  v11 = v10;
  [a1 deviceScaledRoundedValue:v9 forView:left];
  v13 = v12;
  [a1 deviceScaledRoundedValue:v9 forView:bottom];
  v15 = v14;
  [a1 deviceScaledRoundedValue:v9 forView:right];
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

+ (CGSize)deviceScaledRoundedSize:(CGSize)a3 forView:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [a1 deviceScaledRoundedValue:v7 forView:width];
  v9 = v8;
  [a1 deviceScaledRoundedValue:v7 forView:height];
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (double)deviceScaledFlooredValue:(double)a3 forView:(id)a4
{
  v5 = [a4 tlks_scale];
  v6.n128_u64[0] = v7.n128_u64[0];
  v7.n128_f64[0] = a3;

  MEMORY[0x1EEE4DCE8](v5, v7, v6);
  return result;
}

+ (double)scaledValueForValue:(double)a3 withFont:(id)a4 view:(id)a5
{
  v8 = a5;
  [a4 _scaledValueForValue:a3];
  [a1 deviceScaledRoundedValue:v8 forView:?];
  v10 = v9;

  return v10;
}

+ (void)setDynamicBaselineAlignmentsForLabel:(id)a3 top:(double)a4 bottom:(double)a5 view:(id)a6
{
  v10 = a6;
  v21 = a3;
  [v21 effectiveFirstBaselineOffsetFromTop];
  v12 = v11;
  v13 = [v21 font];
  [a1 scaledValueForValue:v13 withFont:v10 view:a4];
  v15 = v12 - v14;
  [v21 effectiveBaselineOffsetFromBottom];
  v17 = v16;
  v18 = [v21 font];
  [a1 scaledValueForValue:v18 withFont:v10 view:a5];
  v20 = v19;

  [v21 setCustomAlignmentRectInsets:{v15, 0.0, v17 - v20, 0.0}];
}

+ (CGSize)idealImageSizeWithSize:(CGSize)result fittingSize:(CGSize)a4
{
  if (result.width >= a4.width || result.height >= a4.height)
  {
    v5 = a4.width / result.width;
    if (result.width == 0.0)
    {
      v5 = 0.0;
    }

    v6 = a4.height / result.height;
    if (result.height == 0.0)
    {
      v6 = 0.0;
    }

    v7 = fmin(v5, v6);
    result.width = result.width * v7;
    result.height = result.height * v7;
  }

  return result;
}

+ (void)applyRowBoundedSizingToImageView:(id)a3 isCompactWidth:(BOOL)a4
{
  v4 = a4;
  v25 = a3;
  [objc_opt_class() maxThumbnailSizeIsCompactWidth:v4];
  v6 = v5;
  v8 = v7;
  v9 = [v25 tlkImage];
  [v9 size];
  v11 = v10;
  v13 = v12;

  v14 = *MEMORY[0x1E695F060];
  v15 = *(MEMORY[0x1E695F060] + 8);
  if (v11 <= 0.0 || v11 > 29.0 || v13 > 29.0)
  {
    v18 = v25;
    if (v11 == v14 && v13 == v15)
    {
      v22 = [v25 tlkImage];
      [v22 aspectRatio];
      if (v23 == 0.0)
      {
        v24 = 1.0;
      }

      else
      {
        v24 = v23;
      }

      v8 = v6 / v24;
      v18 = v25;
      v21 = v6;
      v20 = v8;
    }

    else
    {
      v20 = 0.0;
      v21 = v6;
    }

    [v18 setMinimumLayoutSize:{v21, v20}];
  }

  else
  {
    [v25 setMinimumLayoutSize:{v14, v15}];
    v6 = *MEMORY[0x1E698B700];
    v8 = *(MEMORY[0x1E698B700] + 8);
  }

  [v25 setMaximumLayoutSize:{v6, v8}];
}

+ (CGSize)maxThumbnailSize
{
  [a1 maxThumbnailSizeIsCompactWidth:0];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)maxThumbnailSizeIsCompactWidth:(BOOL)a3
{
  v5 = _UISolariumEnabled();
  if (a3)
  {
    v6 = 45.0;
    v7 = 40.0;
  }

  else
  {
    if (v5)
    {
      v8 = 64.0;
    }

    else
    {
      v8 = 60.0;
    }

    if (v5)
    {
      v9 = 71.5;
    }

    else
    {
      v9 = 67.5;
    }

    v10 = [a1 isWideScreen];
    if (v10)
    {
      v6 = v9;
    }

    else
    {
      v6 = 45.0;
    }

    v7 = 40.0;
    if (v10)
    {
      v7 = v8;
    }
  }

  result.height = v6;
  result.width = v7;
  return result;
}

+ (CGSize)minimumButtonSize
{
  v2 = 44.0;
  v3 = 44.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (double)contentHeightOfTableView:(id)a3 forWidth:(double)a4 maxHeight:(double)a5
{
  v7 = a3;
  v8 = [v7 superview];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [v7 superview];
  [v17 setFrame:{v10, v12, a4, a5}];

  [v7 frame];
  v33 = v19;
  v34 = v18;
  v21 = v20;
  v23 = v22;
  [v7 contentSize];
  if (v24 == 0.0)
  {
    v26 = 0;
  }

  else
  {
    [v7 contentSize];
    v26 = v25 < a5;
    if (v25 < a5)
    {
      v27 = v25;
      do
      {
        [v7 frame];
        [v7 setFrame:?];
        [v7 layoutIfNeeded];
        [v7 contentSize];
        if (v27 == v28)
        {
          break;
        }

        [v7 contentSize];
        v27 = v29;
      }

      while (v29 < a5);
    }
  }

  if ([v7 numberOfSections])
  {
    [v7 rectForSection:{objc_msgSend(v7, "numberOfSections") - 1}];
    MaxY = CGRectGetMaxY(v35);
    if (!v26)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  MaxY = 0.0;
  if (v26)
  {
LABEL_10:
    [v7 setFrame:{v34, v21, v23, v33}];
  }

LABEL_11:
  if (MaxY <= a5)
  {
    a5 = MaxY;
  }

  v31 = [v7 superview];
  [v31 setFrame:{v10, v12, v14, v16}];

  return a5;
}

+ (id)tappableControlViewForPoint:(CGPoint)a3 inView:(id)a4 withEvent:(id)a5
{
  y = a3.y;
  x = a3.x;
  v162 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (![v8 pointInside:v9 withEvent:{x, y}])
  {
    goto LABEL_62;
  }

  v128.x = x;
  v128.y = y;
  v129 = v9;
  +[TLKLayoutUtilities minimumButtonSize];
  v143 = v10;
  v12 = v11;
  v13 = [objc_opt_class() controlsInView:v8];
  v14 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  obj = v13;
  v15 = [obj countByEnumeratingWithState:&v155 objects:v161 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v156;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v156 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v155 + 1) + 8 * i);
        v151 = 0u;
        v152 = 0u;
        v153 = 0u;
        v154 = 0u;
        v20 = obj;
        v21 = [v20 countByEnumeratingWithState:&v151 objects:v160 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v152;
          while (2)
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v152 != v23)
              {
                objc_enumerationMutation(v20);
              }

              if (v19 != *(*(&v151 + 1) + 8 * j) && ([v19 isDescendantOfView:?] & 1) != 0)
              {
                v31 = v20;
                goto LABEL_20;
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v151 objects:v160 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

        if ([v19 isEnabled] && objc_msgSend(objc_opt_class(), "viewIsVisible:", v19))
        {
          [v19 bounds];
          v25 = v164.origin.x;
          v26 = v164.origin.y;
          width = v164.size.width;
          height = v164.size.height;
          v29 = fmin(CGRectGetWidth(v164) - v143, 0.0) * 0.5;
          v165.origin.x = v25;
          v165.origin.y = v26;
          v165.size.width = width;
          v165.size.height = height;
          v30 = fmin(CGRectGetHeight(v165) - v12, 0.0) * 0.5;
          v31 = [MEMORY[0x1E696B098] valueWithUIEdgeInsets:{v30, v29, v30, v29}];
          [v14 setObject:v31 forKey:v19];
LABEL_20:
        }
      }

      v16 = [v20 countByEnumeratingWithState:&v155 objects:v161 count:16];
    }

    while (v16);
  }

  v32 = [v14 keyEnumerator];
  v33 = [v32 allObjects];

  if ([v33 count])
  {
    v34 = 0;
    v32 = 0x1E7FD8000;
    while (1)
    {
      v35 = [v33 objectAtIndexedSubscript:v34];
      v36 = v34 + 1;
      v130 = v34 + 1;
      if (v34 + 1 < [v33 count])
      {
        break;
      }

LABEL_47:

      ++v34;
      if (v130 >= [v33 count])
      {
        goto LABEL_48;
      }
    }

    while (1)
    {
      v37 = [v14 objectForKey:v35];
      [v37 UIEdgeInsetsValue];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;

      [v35 bounds];
      v144 = v43;
      v145 = v45;
      v141 = v39;
      v142 = v41;
      [v8 convertRect:v35 fromView:{v41 + v46, v39 + v47, v48 - (v41 + v45), v49 - (v39 + v43)}];
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v57 = v56;
      v58 = [v33 objectAtIndexedSubscript:v36];
      v59 = [v14 objectForKey:v58];
      [v59 UIEdgeInsetsValue];
      v61 = v60;
      v63 = v62;
      v65 = v64;
      v67 = v66;

      [v58 bounds];
      v139 = v63;
      v140 = v61;
      v137 = v67;
      v138 = v65;
      [v8 convertRect:v58 fromView:{v63 + v68, v61 + v69, v70 - (v63 + v67), v71 - (v61 + v65)}];
      v174.origin.x = v72;
      v174.origin.y = v73;
      v174.size.width = v74;
      v174.size.height = v75;
      v135 = v51;
      v136 = v55;
      v166.origin.x = v51;
      v166.origin.y = v53;
      v166.size.width = v55;
      v166.size.height = v57;
      v133 = v174.origin.x;
      v134 = v174.size.width;
      v131 = v174.origin.y;
      v132 = v174.size.height;
      v167 = CGRectIntersection(v166, v174);
      v76 = v167.origin.x;
      v77 = v167.origin.y;
      v78 = v167.size.width;
      v79 = v167.size.height;
      [TLKUtilities pixelWidthForView:v8];
      v81 = v80 + v80;
      v168.origin.x = v76;
      v168.origin.y = v77;
      v168.size.width = v78;
      v168.size.height = v79;
      v82 = CGRectGetWidth(v168) * 0.5 - v81;
      if (v82 >= 0.0)
      {
        v83 = v82;
      }

      else
      {
        v83 = 0.0;
      }

      v169.origin.x = v76;
      v169.origin.y = v77;
      v169.size.width = v78;
      v169.size.height = v79;
      v84 = CGRectGetHeight(v169) * 0.5 - v81;
      if (v84 >= 0.0)
      {
        v85 = v84;
      }

      else
      {
        v85 = 0.0;
      }

      if (v83 != 0.0 && v83 < v85)
      {
        v171.origin.x = v135;
        v171.size.width = v136;
        v171.origin.y = v53;
        v171.size.height = v57;
        MinX = CGRectGetMinX(v171);
        v172.origin.x = v133;
        v172.size.width = v134;
        v172.origin.y = v131;
        v172.size.height = v132;
        if (MinX >= CGRectGetMinX(v172))
        {
          v95 = v144;
          v98 = v142 + v83;
          v92 = v138;
          v93 = v137 + v83;
          v94 = v145;
          v97 = v140;
          v96 = v141;
LABEL_45:
          v100 = v139;
          goto LABEL_46;
        }

        v95 = v144;
        v94 = v145 + v83;
        v97 = v140;
        v100 = v139 + v83;
        v96 = v141;
        v98 = v142;
      }

      else
      {
        v87 = v135;
        v88 = v136;
        v89 = v53;
        v90 = v57;
        if (v85 != 0.0)
        {
          MinY = CGRectGetMinY(*&v87);
          v170.origin.x = v133;
          v170.origin.y = v131;
          v170.size.width = v134;
          v170.size.height = v132;
          v93 = v137;
          v92 = v138;
          if (MinY >= CGRectGetMinY(v170))
          {
            v98 = v142;
            v96 = v141 + v85;
            v92 = v138 + v85;
            v95 = v144;
            v94 = v145;
            v97 = v140;
          }

          else
          {
            v94 = v145;
            v95 = v144 + v85;
            v96 = v141;
            v97 = v140 + v85;
            v98 = v142;
          }

          goto LABEL_45;
        }

        v95 = v144;
        v94 = v145;
        v96 = v141;
        v98 = v142;
        v100 = v139;
        v97 = v140;
      }

      v93 = v137;
      v92 = v138;
LABEL_46:
      v101 = MEMORY[0x1E696B098];
      [TLKLayoutUtilities deviceScaledRoundedInsets:v8 forView:v96, v98, v95, v94];
      v102 = [v101 valueWithUIEdgeInsets:?];
      [v14 setObject:v102 forKey:v35];

      v103 = MEMORY[0x1E696B098];
      [TLKLayoutUtilities deviceScaledRoundedInsets:v8 forView:v97, v100, v92, v93];
      v104 = [v103 valueWithUIEdgeInsets:?];
      [v14 setObject:v104 forKey:v58];

      if (++v36 >= [v33 count])
      {
        goto LABEL_47;
      }
    }
  }

LABEL_48:
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v105 = v33;
  v106 = [v105 countByEnumeratingWithState:&v147 objects:v159 count:16];
  if (v106)
  {
    v32 = v106;
    v107 = *v148;
    while (2)
    {
      for (k = 0; k != v32; k = k + 1)
      {
        if (*v148 != v107)
        {
          objc_enumerationMutation(v105);
        }

        v109 = *(*(&v147 + 1) + 8 * k);
        v110 = [v14 objectForKey:v109];
        [v110 UIEdgeInsetsValue];
        v112 = v111;
        v114 = v113;
        v116 = v115;
        v118 = v117;

        [v109 bounds];
        [v8 convertRect:v109 fromView:{v114 + v119, v112 + v120, v121 - (v114 + v118), v122 - (v112 + v116)}];
        if (CGRectContainsPoint(v173, v128))
        {
          [v109 convertPoint:v8 fromView:v128];
          v9 = v129;
          v124 = [v109 hitTest:v129 withEvent:?];
          v125 = v124;
          if (v124)
          {
            v126 = v124;
          }

          else
          {
            v126 = v109;
          }

          v32 = v126;

          v123 = 0;
          goto LABEL_61;
        }
      }

      v32 = [v105 countByEnumeratingWithState:&v147 objects:v159 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  v123 = 1;
  v9 = v129;
LABEL_61:

  if (v123)
  {
LABEL_62:
    v32 = 0;
  }

  return v32;
}

+ (id)controlsInView:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v4 subviews];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 addObject:v11];
        }

        v12 = [a1 controlsInView:v11];
        [v5 addObjectsFromArray:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (BOOL)viewIsVisible:(id)a3
{
  v4 = a3;
  v5 = [v4 superview];
  if (([v4 isHidden] & 1) != 0 || (objc_msgSend(v4, "alpha"), v6 <= 0.0) || (objc_msgSend(v4, "bounds"), CGRectEqualToRect(v9, *MEMORY[0x1E695F058])))
  {
    v7 = 0;
  }

  else if (v5)
  {
    v7 = [a1 viewIsVisible:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end