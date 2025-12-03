@interface TUIVariantSelectorView
- (BOOL)drawsShadows;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)originRectRadius;
- (CGSize)paddleRadius;
- (TUIVariantSelectorView)initWithKey:(id)key renderTraits:(id)traits;
- (UIEdgeInsets)stackLayoutMargins;
- (id)alignmentConstraintsForKey:(id)key;
- (id)backgroundBezierPath;
- (id)heightConstraintsForVariantCell:(id)cell;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)variantCellWithString:(id)string annotation:(id)annotation;
- (id)widthConstraintsForVariantCell:(id)cell previousCell:(id)previousCell;
- (void)addVariantsForKey:(id)key toView:(id)view;
- (void)updateVariantsIfNeededForKey:(id)key;
@end

@implementation TUIVariantSelectorView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  associatedTree = [(TUIKeyPopupView *)self associatedTree];
  interactionType = [associatedTree interactionType];

  if (interactionType == 9)
  {
    if (![(TUIVariantSelectorView *)self pointInside:eventCopy withEvent:x, y])
    {
      popupDelegate = [(TUIKeyPopupView *)self popupDelegate];
      [popupDelegate tappedToDismissSelector];
    }

    selfCopy = self;
  }

  else
  {
    [(TUIKeyPopupView *)self finishVariantSelection];
    selfCopy = [(TUIKeyPopupView *)self touchesForwardingView];
  }

  v12 = selfCopy;

  return v12;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v13.receiver = self;
  v13.super_class = TUIVariantSelectorView;
  v8 = [(TUIKeyPopupView *)&v13 pointInside:eventCopy withEvent:x, y];
  associatedTree = [(TUIKeyPopupView *)self associatedTree];
  if ([associatedTree interactionType] != 9)
  {
    goto LABEL_4;
  }

  associatedTree2 = [(TUIKeyPopupView *)self associatedTree];
  state = [associatedTree2 state];

  if (state == 16)
  {
    associatedTree = [(TUIKeyPopupView *)self variantView];
    v8 = [associatedTree pointInside:eventCopy withEvent:{x, y}];
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
  variantView = [(TUIKeyPopupView *)self variantView];
  [variantView frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  baseKeyLayoutGuide = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
  [baseKeyLayoutGuide layoutFrame];
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
  baseKeyLayoutGuide2 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
  [baseKeyLayoutGuide2 layoutFrame];
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
  baseKeyLayoutGuide3 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
  [baseKeyLayoutGuide3 layoutFrame];
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
  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__TUIVariantSelectorView_backgroundBezierPath__block_invoke;
  aBlock[3] = &unk_1E72D7F88;
  v37 = bezierPath;
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
  renderTraits = [(TUIKeyPopupView *)self renderTraits];
  if ([renderTraits blendForm] == 10)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    renderTraits2 = [(TUIKeyPopupView *)self renderTraits];
    if ([renderTraits2 blendForm] == 11 || (_UISolariumEnabled() & 1) != 0)
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      renderTraits3 = [(TUIKeyPopupView *)self renderTraits];
      v4 = [renderTraits3 usesDarkAppearance] ^ 1;
    }
  }

  return v4;
}

- (CGSize)originRectRadius
{
  cornerRadiusOverride = [(TUIVariantSelectorView *)self cornerRadiusOverride];

  if (cornerRadiusOverride)
  {
    cornerRadiusOverride2 = [(TUIVariantSelectorView *)self cornerRadiusOverride];
    [cornerRadiusOverride2 CGSizeValue];
    v6 = v5;
    v8 = v7;

    v9 = v6;
    v10 = v8;
  }

  else
  {
    isColorAdaptiveBackground = [(TUIKeyPopupView *)self isColorAdaptiveBackground];
    v9 = 6.0;
    if (isColorAdaptiveBackground)
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

- (id)widthConstraintsForVariantCell:(id)cell previousCell:(id)previousCell
{
  cellCopy = cell;
  previousCellCopy = previousCell;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (previousCellCopy)
  {
    widthAnchor = [cellCopy widthAnchor];
    widthAnchor2 = [previousCellCopy widthAnchor];
    v11 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v8 addObject:v11];
  }

  if ([(TUIKeyPopupView *)self isCharacterPreviewPaddle])
  {
    widthAnchor3 = [cellCopy widthAnchor];
    baseKeyLayoutGuide = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
    widthAnchor4 = [baseKeyLayoutGuide widthAnchor];
    v15 = [widthAnchor3 constraintGreaterThanOrEqualToAnchor:widthAnchor4];

    [v8 addObject:v15];
  }

  widthAnchor5 = [cellCopy widthAnchor];
  baseKeyLayoutGuide2 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
  widthAnchor6 = [baseKeyLayoutGuide2 widthAnchor];
  v19 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];

  LODWORD(v20) = 1144750080;
  [v19 setPriority:v20];
  [v8 addObject:v19];

  return v8;
}

- (id)heightConstraintsForVariantCell:(id)cell
{
  heightAnchor = [cell heightAnchor];
  baseKeyLayoutGuide = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
  heightAnchor2 = [baseKeyLayoutGuide heightAnchor];
  [(TUIVariantSelectorView *)self cellMinHeightMultiplierForKeyStyle:[(TUIKeyPopupView *)self layoutStyle]];
  v7 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2 multiplier:?];

  return v7;
}

- (id)variantCellWithString:(id)string annotation:(id)annotation
{
  annotationCopy = annotation;
  stringCopy = string;
  v8 = [TUIVariantCell alloc];
  renderTraits = [(TUIKeyPopupView *)self renderTraits];
  v10 = [(TUIVariantCell *)v8 initWithFrame:stringCopy string:annotationCopy annotation:renderTraits traits:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v10;
}

- (void)addVariantsForKey:(id)key toView:(id)view
{
  keyCopy = key;
  viewCopy = view;
  if (viewCopy && [(TUIKeyPopupView *)self needsPopup])
  {
    subtrees = [keyCopy subtrees];
    v9 = [subtrees count];
    arrangedVariantCells = [(TUIKeyPopupView *)self arrangedVariantCells];
    if (v9 == [arrangedVariantCells count])
    {
      arrangedVariantCells2 = [(TUIKeyPopupView *)self arrangedVariantCells];
      v12 = [arrangedVariantCells2 count];

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
      [v13 addObject:keyCopy];
    }

    else
    {
      v14 = [MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:0];
      arrangedVariantsArray = [(TUIKeyPopupView *)self arrangedVariantsArray];
      v16 = arrangedVariantsArray;
      if (v14 == 1)
      {
        reverseObjectEnumerator = [arrangedVariantsArray reverseObjectEnumerator];
        allObjects = [reverseObjectEnumerator allObjects];
        [v13 addObjectsFromArray:allObjects];

        [(TUIKeyPopupView *)self setBaseKeyOnRight:[(TUIKeyPopupView *)self baseKeyOnRight]^ 1];
      }

      else
      {
        [v13 addObjectsFromArray:arrangedVariantsArray];
      }
    }

    v62 = keyCopy;
    viewCopy = [(TUIKeyPopupView *)self maxVariantsPerRowForKey:keyCopy, viewCopy];
    arrangedVariantRows = [(TUIKeyPopupView *)self arrangedVariantRows];
    reverseObjectEnumerator2 = [arrangedVariantRows reverseObjectEnumerator];

    v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = v13;
    if ([v13 count])
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v59 = viewCopy;
      while (1)
      {
        v25 = v22 / viewCopy;
        if (!v23 || !(v22 % viewCopy))
        {
          nextObject = [reverseObjectEnumerator2 nextObject];

          v23 = nextObject;
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

      variantDisplayString = [v27 variantDisplayString];
      if (!variantDisplayString || [(TUIKeyPopupView *)self isCharacterPreviewPaddle])
      {
        if ([v62 displayType] == 8 && (objc_msgSend(v28, "overrideDisplayString"), v30 = objc_claimAutoreleasedReturnValue(), v30, v30))
        {
          overrideDisplayString = [v28 overrideDisplayString];
        }

        else
        {
          overrideDisplayString = [v28 displayString];
        }

        v33 = overrideDisplayString;

        variantDisplayString = v33;
      }

      secondaryDisplayStrings = [v28 secondaryDisplayStrings];
      if ([secondaryDisplayStrings count])
      {
        if ([v28 displayType] == 7)
        {

LABEL_30:
          secondaryDisplayStrings = [v28 secondaryDisplayStrings];
          firstObject = [secondaryDisplayStrings firstObject];
LABEL_33:

LABEL_34:
          v63 = firstObject;
          v64 = variantDisplayString;
          v32 = [(TUIVariantSelectorView *)self variantCellWithString:variantDisplayString annotation:firstObject];
          [v32 setUserInteractionEnabled:{-[TUIKeyPopupView wantsUserInteractionEnabled](self, "wantsUserInteractionEnabled")}];
          [v32 setCharacterPreviewPaddle:{-[TUIKeyPopupView isCharacterPreviewPaddle](self, "isCharacterPreviewPaddle")}];
          subtrees2 = [v62 subtrees];
          name = [v28 name];
          v38 = [v62 subtreeWithName:name];
          [v32 setIndexNumber:{objc_msgSend(subtrees2, "indexOfObject:", v38)}];

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

          primaryVariant = [(TUIKeyPopupView *)self primaryVariant];
          if (primaryVariant)
          {
            primaryVariant2 = [(TUIKeyPopupView *)self primaryVariant];
            [v32 setPrimaryVariant:primaryVariant2 == v28];
          }

          else
          {
            if ([(TUIKeyPopupView *)self shouldProvideDefaultSelection]&& ![(TUIKeyPopupView *)self isCharacterPreviewPaddle])
            {
              selectedVariantIndex = [v62 selectedVariantIndex];
              v41 = selectedVariantIndex == [v32 indexNumber];
            }

            else
            {
              v41 = 0;
            }

            [v32 setPrimaryVariant:v41];
          }

          [v23 addArrangedSubview:v32];
          arrangedVariantCells3 = [(TUIKeyPopupView *)self arrangedVariantCells];
          [arrangedVariantCells3 addObject:v32];

          viewCopy = v59;
          if (!v22 && !-[TUIKeyPopupView baseKeyOnRight](self, "baseKeyOnRight") || v22 - v25 * v59 == [v21 count] - 1 && -[TUIKeyPopupView baseKeyOnRight](self, "baseKeyOnRight"))
          {
            baseKeyLayoutGuide = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
            centerXAnchor = [baseKeyLayoutGuide centerXAnchor];
            centerXAnchor2 = [v32 centerXAnchor];
            v48 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

            v21 = v60;
            isCharacterPreviewPaddle = [(TUIKeyPopupView *)self isCharacterPreviewPaddle];
            LODWORD(v50) = 1148829696;
            if (!isCharacterPreviewPaddle)
            {
              LODWORD(v50) = dword_1900C0D60[[v60 count] == 1];
            }

            [v48 setPriority:v50];
            [v61 addObject:v48];

            viewCopy = v59;
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
          supportsSupplementalDisplayString = [v28 supportsSupplementalDisplayString];

          if (supportsSupplementalDisplayString)
          {
            firstObject = 0;
            goto LABEL_34;
          }

          goto LABEL_30;
        }
      }

      firstObject = 0;
      goto LABEL_33;
    }

    v32 = 0;
    v23 = 0;
LABEL_63:
    [MEMORY[0x1E696ACD8] activateConstraints:v61];
    [(TUIVariantSelectorView *)self layoutIfNeeded];

    keyCopy = v62;
    viewCopy = v57;
  }

LABEL_64:
  [(TUIKeyPopupView *)self setInitialHighlight];
}

- (void)updateVariantsIfNeededForKey:(id)key
{
  keyCopy = key;
  subtrees = [keyCopy subtrees];
  v6 = [subtrees count];

  if (v6)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    if ([(TUIKeyPopupView *)self layoutStyle]== 1 && [(TUIKeyPopupView *)self shouldProvideDefaultSelection])
    {
      v7 = 0;
    }

    [keyCopy setSelectedVariantIndex:v7];
    if ([keyCopy state] == 16)
    {
      [(TUIKeyPopupView *)self setNeedsPopup:1];
    }
  }

  v8.receiver = self;
  v8.super_class = TUIVariantSelectorView;
  [(TUIKeyPopupView *)&v8 updateVariantsIfNeededForKey:keyCopy];
}

- (id)alignmentConstraintsForKey:(id)key
{
  v47[2] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (keyCopy && ([(TUIKeyPopupView *)self associatedTree], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v44 = keyCopy;
    v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
    associatedTree = [(TUIKeyPopupView *)self associatedTree];
    interactionType = [associatedTree interactionType];

    v8 = 0x1E695D000;
    if (interactionType == 2)
    {
      baseKeyLayoutGuide = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      leadingAnchor = [baseKeyLayoutGuide leadingAnchor];
      variantView = [(TUIKeyPopupView *)self variantView];
      leadingAnchor2 = [variantView leadingAnchor];
      v11 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
      v47[0] = v11;
      variantView2 = [(TUIKeyPopupView *)self variantView];
      trailingAnchor = [variantView2 trailingAnchor];
      baseKeyLayoutGuide2 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      trailingAnchor2 = [baseKeyLayoutGuide2 trailingAnchor];
      v16 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
      v47[1] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];

      v8 = 0x1E695D000uLL;
      [v45 addObjectsFromArray:v17];
    }

    variantView3 = [(TUIKeyPopupView *)self variantView];
    leadingAnchor3 = [variantView3 leadingAnchor];
    leadingAnchor4 = [(TUIVariantSelectorView *)self leadingAnchor];
    v38 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:0.0];
    v46[0] = v38;
    trailingAnchor3 = [(TUIVariantSelectorView *)self trailingAnchor];
    variantView4 = [(TUIKeyPopupView *)self variantView];
    trailingAnchor4 = [variantView4 trailingAnchor];
    v34 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:0.0];
    v46[1] = v34;
    variantView5 = [(TUIKeyPopupView *)self variantView];
    topAnchor = [variantView5 topAnchor];
    topAnchor2 = [(TUIVariantSelectorView *)self topAnchor];
    v30 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v46[2] = v30;
    baseKeyLayoutGuide3 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
    topAnchor3 = [baseKeyLayoutGuide3 topAnchor];
    variantView6 = [(TUIKeyPopupView *)self variantView];
    bottomAnchor = [variantView6 bottomAnchor];
    [(TUIKeyPopupView *)self variantViewBottomSpacing];
    v21 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:?];
    v46[3] = v21;
    bottomAnchor2 = [(TUIVariantSelectorView *)self bottomAnchor];
    baseKeyLayoutGuide4 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
    bottomAnchor3 = [baseKeyLayoutGuide4 bottomAnchor];
    v25 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v46[4] = v25;
    v26 = [*(v8 + 3784) arrayWithObjects:v46 count:5];
    v27 = v45;
    [v45 addObjectsFromArray:v26];

    keyCopy = v44;
  }

  else
  {
    v27 = MEMORY[0x1E695E0F0];
  }

  return v27;
}

- (TUIVariantSelectorView)initWithKey:(id)key renderTraits:(id)traits
{
  v5.receiver = self;
  v5.super_class = TUIVariantSelectorView;
  return [(TUIKeyPopupView *)&v5 initWithKey:key renderTraits:traits];
}

@end