@interface TUIVariantSelectorView
- (BOOL)drawsShadows;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)originRectRadius;
- (CGSize)paddleRadius;
- (TUIVariantSelectorView)initWithKey:(id)a3 renderTraits:(id)a4;
- (UIEdgeInsets)stackLayoutMargins;
- (id)alignmentConstraintsForKey:(id)a3;
- (id)backgroundBezierPath;
- (id)heightConstraintsForVariantCell:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)variantCellWithString:(id)a3 annotation:(id)a4;
- (id)widthConstraintsForVariantCell:(id)a3 previousCell:(id)a4;
- (void)addVariantsForKey:(id)a3 toView:(id)a4;
- (void)updateVariantsIfNeededForKey:(id)a3;
@end

@implementation TUIVariantSelectorView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(TUIKeyPopupView *)self associatedTree];
  v9 = [v8 interactionType];

  if (v9 == 9)
  {
    if (![(TUIVariantSelectorView *)self pointInside:v7 withEvent:x, y])
    {
      v10 = [(TUIKeyPopupView *)self popupDelegate];
      [v10 tappedToDismissSelector];
    }

    v11 = self;
  }

  else
  {
    [(TUIKeyPopupView *)self finishVariantSelection];
    v11 = [(TUIKeyPopupView *)self touchesForwardingView];
  }

  v12 = v11;

  return v12;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = TUIVariantSelectorView;
  v8 = [(TUIKeyPopupView *)&v13 pointInside:v7 withEvent:x, y];
  v9 = [(TUIKeyPopupView *)self associatedTree];
  if ([v9 interactionType] != 9)
  {
    goto LABEL_4;
  }

  v10 = [(TUIKeyPopupView *)self associatedTree];
  v11 = [v10 state];

  if (v11 == 16)
  {
    v9 = [(TUIKeyPopupView *)self variantView];
    v8 = [v9 pointInside:v7 withEvent:{x, y}];
LABEL_4:
  }

  return v8;
}

- (id)backgroundBezierPath
{
  [(TUIVariantSelectorView *)self paddleRadius];
  v96 = v3;
  v99 = v4;
  [(TUIVariantSelectorView *)self originRectRadius];
  v100 = v5;
  v7 = v6;
  v8 = [(TUIKeyPopupView *)self variantView];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
  [v17 layoutFrame];
  UIRectInset();
  v102 = v18;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  if ([(TUIKeyPopupView *)self isColorAdaptiveBackground]&& ![(TUIKeyPopupView *)self isCharacterPreviewPaddle])
  {
    v52 = MEMORY[0x1E69DC728];
    v48 = v10;
    v49 = v12;
    v50 = v14;
    v51 = v16;
    goto LABEL_14;
  }

  if ([(TUIKeyPopupView *)self layoutStyle]!= 1)
  {
    v47 = MEMORY[0x1E69DC728];
    UIRectInset();
    v52 = v47;
LABEL_14:
    v53 = [v52 bezierPathWithRoundedRect:v48 cornerRadius:{v49, v50, v51, v7}];
    goto LABEL_34;
  }

  v110.origin.x = v10;
  v110.origin.y = v12;
  v110.size.width = v14;
  v110.size.height = v16;
  v95 = v7;
  MaxY = CGRectGetMaxY(v110);
  rect = v22;
  v111.size.width = v22;
  v111.origin.x = v102;
  v111.origin.y = v20;
  v111.size.height = v24;
  v26 = MaxY - CGRectGetMinY(v111);
  v97 = v20 + v26;
  v98 = v24 - v26;
  v27 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
  [v27 layoutFrame];
  MinX = CGRectGetMinX(v112);
  v113.origin.x = v10;
  v113.origin.y = v12;
  v113.size.width = v14;
  v113.size.height = v16;
  v29 = vabdd_f64(MinX, CGRectGetMinX(v113));

  v30 = v96;
  v89 = round(v29);
  if (v89 >= v96 + -3.0)
  {
    v31 = v96;
  }

  else
  {
    v31 = 0.0;
  }

  v92 = v31;
  v32 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
  [v32 layoutFrame];
  MaxX = CGRectGetMaxX(v114);
  v115.origin.x = v10;
  v115.origin.y = v12;
  v115.size.width = v14;
  v115.size.height = v16;
  v34 = vabdd_f64(MaxX, CGRectGetMaxX(v115));

  v91 = round(v34);
  if (v91 >= v96 + -3.0)
  {
    v35 = v96;
  }

  else
  {
    v35 = 0.0;
  }

  v94 = v35;
  v36 = [MEMORY[0x1E69DC728] bezierPath];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__TUIVariantSelectorView_backgroundBezierPath__block_invoke;
  aBlock[3] = &unk_1E72D7F88;
  v37 = v36;
  v108 = v37;
  v38 = _Block_copy(aBlock);
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __46__TUIVariantSelectorView_backgroundBezierPath__block_invoke_2;
  v103[3] = &unk_1E72D7D20;
  v105 = v96;
  v106 = v99;
  v39 = v37;
  v104 = v39;
  v40 = _Block_copy(v103);
  v116.size.width = rect;
  v116.origin.x = v102;
  v116.origin.y = v97;
  v116.size.height = v98;
  v41 = CGRectGetMinX(v116);
  v117.origin.x = v102;
  v42 = v41;
  v117.origin.y = v97;
  v117.size.width = rect;
  v117.size.height = v98;
  v43 = CGRectGetMaxY(v117);
  [v39 moveToPoint:{v100 + v42, v43}];
  [v39 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v42 clockwise:{v43, v100, v95}];
  if (v92 == 0.0)
  {
    v118.origin.x = v10;
    v118.origin.y = v12;
    v118.size.width = v14;
    v118.size.height = v16;
    [v39 addLineToPoint:{v42, CGRectGetMaxY(v118)}];
    v44 = v99;
    v45 = v97;
    v93 = v42;
    v46 = v16;
  }

  else
  {
    if (v89 <= v96 || (-[TUIKeyPopupView arrangedVariantCells](self, "arrangedVariantCells", v89), v54 = objc_claimAutoreleasedReturnValue(), v55 = [v54 count], v54, v55 == 1))
    {
      v119.size.width = rect;
      v119.origin.x = v102;
      v119.origin.y = v97;
      v119.size.height = v98;
      MinY = CGRectGetMinY(v119);
      v120.origin.x = v10;
      v120.origin.y = v12;
      v120.size.width = v14;
      v120.size.height = v16;
      v57 = CGRectGetMinX(v120);
      v121.origin.x = v10;
      v121.origin.y = v12;
      v121.size.width = v14;
      v121.size.height = v16;
      v58 = CGRectGetMaxY(v121);
      v40[2](v40, 0, v42, MinY, v57, v58);
      v44 = v99;
    }

    else
    {
      v122.origin.x = v102;
      v122.origin.y = v97;
      v122.size.width = rect;
      v122.size.height = v98;
      v90 = CGRectGetMinX(v122);
      v123.origin.x = v102;
      v123.origin.y = v97;
      v123.size.width = rect;
      v123.size.height = v98;
      v59 = CGRectGetMinY(v123);
      v44 = v99;
      v38[2](v38, 2, 1, v90, v59, 0.0, v99, v92, v99);
      v124.origin.x = v10;
      v124.origin.y = v12;
      v124.size.width = v14;
      v124.size.height = v16;
      v60 = CGRectGetMinX(v124);
      v125.origin.x = v10;
      v125.origin.y = v12;
      v125.size.width = v14;
      v125.size.height = v16;
      v61 = CGRectGetMaxY(v125);
      v38[2](v38, 4, 0, v60, v61, v92, 0.0, v92, v99);
    }

    v126.origin.x = v10;
    v126.origin.y = v12;
    v126.size.width = v14;
    v126.size.height = v16;
    v93 = CGRectGetMinX(v126);
    v46 = v16;
    v30 = v96;
    v45 = v97;
  }

  v127.origin.x = v10;
  v127.origin.y = v12;
  v127.size.width = v14;
  v127.size.height = v46;
  v62 = CGRectGetMinY(v127);
  v38[2](v38, 1, 0, v93, v62, 0.0, v44, v30, v44);
  v64 = rect;
  v63 = v102;
  if (v94 == 0.0)
  {
    v65 = v45;
  }

  else
  {
    v63 = v10;
    v65 = v12;
  }

  if (v94 != 0.0)
  {
    v64 = v14;
  }

  v66 = v98;
  if (v94 != 0.0)
  {
    v66 = v46;
  }

  v67 = CGRectGetMaxX(*&v63);
  v128.origin.x = v10;
  v128.origin.y = v12;
  v128.size.width = v14;
  v128.size.height = v46;
  v68 = CGRectGetMinY(v128);
  v38[2](v38, 2, 0, v67, v68, -v30, 0.0, v30, v44);
  if (v94 == 0.0)
  {
    v129.origin.x = v10;
    v129.origin.y = v12;
    v129.size.width = v14;
    v129.size.height = v46;
    [v39 addLineToPoint:{v67, CGRectGetMaxY(v129)}];
    v70 = v97;
    v69 = v98;
    v72 = rect;
    v71 = v102;
  }

  else if (v91 <= v30 || (-[TUIKeyPopupView arrangedVariantCells](self, "arrangedVariantCells", v91), v73 = objc_claimAutoreleasedReturnValue(), v74 = [v73 count], v73, v74 == 1))
  {
    v130.origin.x = v10;
    v130.origin.y = v12;
    v130.size.width = v14;
    v75 = v46;
    v130.size.height = v46;
    v76 = CGRectGetMaxX(v130);
    v131.origin.x = v10;
    v131.origin.y = v12;
    v131.size.width = v14;
    v131.size.height = v75;
    v77 = CGRectGetMaxY(v131);
    v72 = rect;
    v71 = v102;
    v132.origin.x = v102;
    v70 = v97;
    v69 = v98;
    v132.origin.y = v97;
    v132.size.width = rect;
    v132.size.height = v98;
    v78 = CGRectGetMaxX(v132);
    v133.origin.x = v102;
    v133.origin.y = v97;
    v133.size.width = rect;
    v133.size.height = v98;
    v79 = CGRectGetMinY(v133);
    v40[2](v40, 1, v76, v77, v78, v79);
  }

  else
  {
    v80 = v10;
    v134.origin.x = v10;
    v134.origin.y = v12;
    v134.size.width = v14;
    v81 = v46;
    v134.size.height = v46;
    v82 = CGRectGetMaxX(v134);
    v135.origin.x = v80;
    v135.origin.y = v12;
    v135.size.width = v14;
    v135.size.height = v81;
    v83 = CGRectGetMaxY(v135);
    v38[2](v38, 8, 0, v82, v83, 0.0, -v44, v94, v44);
    v72 = rect;
    v71 = v102;
    v136.origin.x = v102;
    v70 = v97;
    v69 = v98;
    v136.origin.y = v97;
    v136.size.width = rect;
    v136.size.height = v98;
    v84 = CGRectGetMaxX(v136);
    v137.origin.x = v102;
    v137.origin.y = v97;
    v137.size.width = rect;
    v137.size.height = v98;
    v85 = CGRectGetMinY(v137);
    v38[2](v38, 1, 1, v84, v85, v94, 0.0, v94, v44);
  }

  v138.origin.x = v71;
  v138.origin.y = v70;
  v138.size.width = v72;
  v138.size.height = v69;
  v86 = CGRectGetMaxX(v138);
  v139.origin.x = v71;
  v139.origin.y = v70;
  v139.size.width = v72;
  v139.size.height = v69;
  v87 = CGRectGetMaxY(v139);
  (v38[2])(v38, 8, 0, v86, v87, 0.0, -v95, v100);
  [v39 closePath];
  v53 = v39;

LABEL_34:

  return v53;
}

uint64_t __46__TUIVariantSelectorView_backgroundBezierPath__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  [*(a1 + 32) addLineToPoint:{a4 + a6, a5 + a7}];
  v16 = *(a1 + 32);

  return [v16 _addRoundedCornerWithTrueCorner:a2 radius:a3 corner:a4 clockwise:{a5, a8, a9}];
}

uint64_t __46__TUIVariantSelectorView_backgroundBezierPath__block_invoke_2(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  if (a2)
  {
    v11 = -*(a1 + 48);
  }

  else
  {
    v11 = *(a1 + 48);
  }

  [*(a1 + 32) addLineToPoint:{a3, a4 + v11}];
  v12 = *(a1 + 32);

  return [v12 addCurveToPoint:a5 controlPoint1:a6 - v11 controlPoint2:{a3, a6, a5, a4}];
}

- (UIEdgeInsets)stackLayoutMargins
{
  v2 = 0.0;
  v3 = 10.0;
  v4 = 0.0;
  v5 = 10.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BOOL)drawsShadows
{
  v3 = [(TUIKeyPopupView *)self renderTraits];
  if ([v3 blendForm] == 10)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = [(TUIKeyPopupView *)self renderTraits];
    if ([v5 blendForm] == 11 || (_UISolariumEnabled() & 1) != 0)
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v6 = [(TUIKeyPopupView *)self renderTraits];
      v4 = [v6 usesDarkAppearance] ^ 1;
    }
  }

  return v4;
}

- (CGSize)originRectRadius
{
  v3 = [(TUIVariantSelectorView *)self cornerRadiusOverride];

  if (v3)
  {
    v4 = [(TUIVariantSelectorView *)self cornerRadiusOverride];
    [v4 CGSizeValue];
    v6 = v5;
    v8 = v7;

    v9 = v6;
    v10 = v8;
  }

  else
  {
    v11 = [(TUIKeyPopupView *)self isColorAdaptiveBackground];
    v9 = 6.0;
    if (v11)
    {
      v9 = 10.0;
    }

    v10 = v9;
  }

  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)paddleRadius
{
  v2 = 12.0;
  v3 = 12.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)widthConstraintsForVariantCell:(id)a3 previousCell:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v7)
  {
    v9 = [v6 widthAnchor];
    v10 = [v7 widthAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    [v8 addObject:v11];
  }

  if ([(TUIKeyPopupView *)self isCharacterPreviewPaddle])
  {
    v12 = [v6 widthAnchor];
    v13 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
    v14 = [v13 widthAnchor];
    v15 = [v12 constraintGreaterThanOrEqualToAnchor:v14];

    [v8 addObject:v15];
  }

  v16 = [v6 widthAnchor];
  v17 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
  v18 = [v17 widthAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];

  LODWORD(v20) = 1144750080;
  [v19 setPriority:v20];
  [v8 addObject:v19];

  return v8;
}

- (id)heightConstraintsForVariantCell:(id)a3
{
  v4 = [a3 heightAnchor];
  v5 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
  v6 = [v5 heightAnchor];
  [(TUIVariantSelectorView *)self cellMinHeightMultiplierForKeyStyle:[(TUIKeyPopupView *)self layoutStyle]];
  v7 = [v4 constraintGreaterThanOrEqualToAnchor:v6 multiplier:?];

  return v7;
}

- (id)variantCellWithString:(id)a3 annotation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [TUIVariantCell alloc];
  v9 = [(TUIKeyPopupView *)self renderTraits];
  v10 = [(TUIVariantCell *)v8 initWithFrame:v7 string:v6 annotation:v9 traits:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v10;
}

- (void)addVariantsForKey:(id)a3 toView:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7 && [(TUIKeyPopupView *)self needsPopup])
  {
    v8 = [v6 subtrees];
    v9 = [v8 count];
    v10 = [(TUIKeyPopupView *)self arrangedVariantCells];
    if (v9 == [v10 count])
    {
      v11 = [(TUIKeyPopupView *)self arrangedVariantCells];
      v12 = [v11 count];

      if (v12)
      {
        goto LABEL_64;
      }
    }

    else
    {
    }

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v60 = v13;
    if ([(TUIKeyPopupView *)self isCharacterPreviewPaddle])
    {
      [v13 addObject:v6];
    }

    else
    {
      v14 = [MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:0];
      v15 = [(TUIKeyPopupView *)self arrangedVariantsArray];
      v16 = v15;
      if (v14 == 1)
      {
        v17 = [v15 reverseObjectEnumerator];
        v18 = [v17 allObjects];
        [v13 addObjectsFromArray:v18];

        [(TUIKeyPopupView *)self setBaseKeyOnRight:[(TUIKeyPopupView *)self baseKeyOnRight]^ 1];
      }

      else
      {
        [v13 addObjectsFromArray:v15];
      }
    }

    v62 = v6;
    v19 = [(TUIKeyPopupView *)self maxVariantsPerRowForKey:v6, v7];
    v20 = [(TUIKeyPopupView *)self arrangedVariantRows];
    v58 = [v20 reverseObjectEnumerator];

    v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = v13;
    if ([v13 count])
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v59 = v19;
      while (1)
      {
        v25 = v22 / v19;
        if (!v23 || !(v22 % v19))
        {
          v26 = [v58 nextObject];

          v23 = v26;
        }

        v27 = [v21 objectAtIndex:v22];
        v28 = v27;
        if (v23)
        {
          if (v27)
          {
            break;
          }
        }

        v32 = v24;
LABEL_52:
        ++v22;

        v24 = v32;
        if ([v21 count] <= v22)
        {
          goto LABEL_63;
        }
      }

      v29 = [v27 variantDisplayString];
      if (!v29 || [(TUIKeyPopupView *)self isCharacterPreviewPaddle])
      {
        if ([v62 displayType] == 8 && (objc_msgSend(v28, "overrideDisplayString"), v30 = objc_claimAutoreleasedReturnValue(), v30, v30))
        {
          v31 = [v28 overrideDisplayString];
        }

        else
        {
          v31 = [v28 displayString];
        }

        v33 = v31;

        v29 = v33;
      }

      v34 = [v28 secondaryDisplayStrings];
      if ([v34 count])
      {
        if ([v28 displayType] == 7)
        {

LABEL_30:
          v34 = [v28 secondaryDisplayStrings];
          v35 = [v34 firstObject];
LABEL_33:

LABEL_34:
          v63 = v35;
          v64 = v29;
          v32 = [(TUIVariantSelectorView *)self variantCellWithString:v29 annotation:v35];
          [v32 setUserInteractionEnabled:{-[TUIKeyPopupView wantsUserInteractionEnabled](self, "wantsUserInteractionEnabled")}];
          [v32 setCharacterPreviewPaddle:{-[TUIKeyPopupView isCharacterPreviewPaddle](self, "isCharacterPreviewPaddle")}];
          v36 = [v62 subtrees];
          v37 = [v28 name];
          v38 = [v62 subtreeWithName:v37];
          [v32 setIndexNumber:{objc_msgSend(v36, "indexOfObject:", v38)}];

          v21 = v60;
          if ([v32 indexNumber] == 0x7FFFFFFFFFFFFFFFLL)
          {
            if (os_variant_has_internal_diagnostics())
            {
              v56 = __TUIFaultDebugAssertLog();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
              {
                *v66 = 0;
                _os_log_fault_impl(&dword_18FFDC000, v56, OS_LOG_TYPE_FAULT, "The variant selector cell index number could not be found.", v66, 2u);
              }

              v21 = v60;
            }

            else
            {
              CategoryImpl = addVariantsForKey_toView____s_category;
              if (!addVariantsForKey_toView____s_category)
              {
                CategoryImpl = __TUILogGetCategoryImpl("Assert");
                atomic_store(CategoryImpl, &addVariantsForKey_toView____s_category);
              }

              v55 = *(CategoryImpl + 8);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_18FFDC000, v55, OS_LOG_TYPE_ERROR, "The variant selector cell index number could not be found.", buf, 2u);
              }
            }
          }

          v39 = [(TUIKeyPopupView *)self primaryVariant];
          if (v39)
          {
            v40 = [(TUIKeyPopupView *)self primaryVariant];
            [v32 setPrimaryVariant:v40 == v28];
          }

          else
          {
            if ([(TUIKeyPopupView *)self shouldProvideDefaultSelection]&& ![(TUIKeyPopupView *)self isCharacterPreviewPaddle])
            {
              v43 = [v62 selectedVariantIndex];
              v41 = v43 == [v32 indexNumber];
            }

            else
            {
              v41 = 0;
            }

            [v32 setPrimaryVariant:v41];
          }

          [v23 addArrangedSubview:v32];
          v44 = [(TUIKeyPopupView *)self arrangedVariantCells];
          [v44 addObject:v32];

          v19 = v59;
          if (!v22 && !-[TUIKeyPopupView baseKeyOnRight](self, "baseKeyOnRight") || v22 - v25 * v59 == [v21 count] - 1 && -[TUIKeyPopupView baseKeyOnRight](self, "baseKeyOnRight"))
          {
            v45 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
            v46 = [v45 centerXAnchor];
            v47 = [v32 centerXAnchor];
            v48 = [v46 constraintEqualToAnchor:v47];

            v21 = v60;
            v49 = [(TUIKeyPopupView *)self isCharacterPreviewPaddle];
            LODWORD(v50) = 1148829696;
            if (!v49)
            {
              LODWORD(v50) = dword_1900C0D60[[v60 count] == 1];
            }

            [v48 setPriority:v50];
            [v61 addObject:v48];

            v19 = v59;
          }

          v51 = [(TUIVariantSelectorView *)self heightConstraintsForVariantCell:v32];
          [v61 addObject:v51];

          LODWORD(v52) = 1144766464;
          [v32 setContentCompressionResistancePriority:1 forAxis:v52];
          v53 = [(TUIVariantSelectorView *)self widthConstraintsForVariantCell:v32 previousCell:v24];
          [v61 addObjectsFromArray:v53];

          goto LABEL_52;
        }

        if (![v28 displayType])
        {
          v42 = [v28 supportsSupplementalDisplayString];

          if (v42)
          {
            v35 = 0;
            goto LABEL_34;
          }

          goto LABEL_30;
        }
      }

      v35 = 0;
      goto LABEL_33;
    }

    v32 = 0;
    v23 = 0;
LABEL_63:
    [MEMORY[0x1E696ACD8] activateConstraints:v61];
    [(TUIVariantSelectorView *)self layoutIfNeeded];

    v6 = v62;
    v7 = v57;
  }

LABEL_64:
  [(TUIKeyPopupView *)self setInitialHighlight];
}

- (void)updateVariantsIfNeededForKey:(id)a3
{
  v4 = a3;
  v5 = [v4 subtrees];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    if ([(TUIKeyPopupView *)self layoutStyle]== 1 && [(TUIKeyPopupView *)self shouldProvideDefaultSelection])
    {
      v7 = 0;
    }

    [v4 setSelectedVariantIndex:v7];
    if ([v4 state] == 16)
    {
      [(TUIKeyPopupView *)self setNeedsPopup:1];
    }
  }

  v8.receiver = self;
  v8.super_class = TUIVariantSelectorView;
  [(TUIKeyPopupView *)&v8 updateVariantsIfNeededForKey:v4];
}

- (id)alignmentConstraintsForKey:(id)a3
{
  v47[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && ([(TUIKeyPopupView *)self associatedTree], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v44 = v4;
    v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [(TUIKeyPopupView *)self associatedTree];
    v7 = [v6 interactionType];

    v8 = 0x1E695D000;
    if (v7 == 2)
    {
      v42 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      v40 = [v42 leadingAnchor];
      v9 = [(TUIKeyPopupView *)self variantView];
      v10 = [v9 leadingAnchor];
      v11 = [v40 constraintGreaterThanOrEqualToAnchor:v10];
      v47[0] = v11;
      v12 = [(TUIKeyPopupView *)self variantView];
      v13 = [v12 trailingAnchor];
      v14 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      v15 = [v14 trailingAnchor];
      v16 = [v13 constraintGreaterThanOrEqualToAnchor:v15];
      v47[1] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];

      v8 = 0x1E695D000uLL;
      [v45 addObjectsFromArray:v17];
    }

    v43 = [(TUIKeyPopupView *)self variantView];
    v41 = [v43 leadingAnchor];
    v39 = [(TUIVariantSelectorView *)self leadingAnchor];
    v38 = [v41 constraintEqualToAnchor:v39 constant:0.0];
    v46[0] = v38;
    v36 = [(TUIVariantSelectorView *)self trailingAnchor];
    v37 = [(TUIKeyPopupView *)self variantView];
    v35 = [v37 trailingAnchor];
    v34 = [v36 constraintEqualToAnchor:v35 constant:0.0];
    v46[1] = v34;
    v33 = [(TUIKeyPopupView *)self variantView];
    v32 = [v33 topAnchor];
    v31 = [(TUIVariantSelectorView *)self topAnchor];
    v30 = [v32 constraintEqualToAnchor:v31 constant:0.0];
    v46[2] = v30;
    v29 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
    v18 = [v29 topAnchor];
    v19 = [(TUIKeyPopupView *)self variantView];
    v20 = [v19 bottomAnchor];
    [(TUIKeyPopupView *)self variantViewBottomSpacing];
    v21 = [v18 constraintEqualToAnchor:v20 constant:?];
    v46[3] = v21;
    v22 = [(TUIVariantSelectorView *)self bottomAnchor];
    v23 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
    v24 = [v23 bottomAnchor];
    v25 = [v22 constraintEqualToAnchor:v24];
    v46[4] = v25;
    v26 = [*(v8 + 3784) arrayWithObjects:v46 count:5];
    v27 = v45;
    [v45 addObjectsFromArray:v26];

    v4 = v44;
  }

  else
  {
    v27 = MEMORY[0x1E695E0F0];
  }

  return v27;
}

- (TUIVariantSelectorView)initWithKey:(id)a3 renderTraits:(id)a4
{
  v5.receiver = self;
  v5.super_class = TUIVariantSelectorView;
  return [(TUIKeyPopupView *)&v5 initWithKey:a3 renderTraits:a4];
}

@end