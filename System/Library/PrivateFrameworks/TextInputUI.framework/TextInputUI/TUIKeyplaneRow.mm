@interface TUIKeyplaneRow
+ (id)emptyRowForKeyplane:(id)a3 rowNumber:(int64_t)a4;
+ (id)rowForKeyplane:(id)a3 keys:(id)a4 letterKeyGuide:(id)a5;
- (BOOL)keyIsControlType:(id)a3;
- (BOOL)keyIsSpaceType:(id)a3;
- (BOOL)keyIsStringType:(id)a3;
- (BOOL)rowHasDoubleHeightKeys;
- (TUIKeyplaneRow)init;
- (TUIKeyplaneView)hostView;
- (double)middlePaddingConstantFromFactory:(id)a3;
- (id)constraintsForStringKeys:(id)a3 inRowGuide:(id)a4 matchingSizingGuide:(id)a5 splitIndex:(int64_t)a6;
- (id)description;
- (id)doubleHeightKeysForRow;
- (id)splitLayoutGuide;
- (void)layoutRowWithKeys:(id)a3 guide:(id)a4 type:(int64_t)a5;
- (void)removeFromSuperview;
- (void)resetRow;
- (void)setRenderConfig:(id)a3;
- (void)toggleConstraintsForSplit:(BOOL)a3;
- (void)updateKeysForTransition:(BOOL)a3;
- (void)updateKeysForTransition:(BOOL)a3 startStyle:(int64_t)a4 endStyle:(int64_t)a5;
- (void)updateKeysForTransition:(BOOL)a3 style:(int64_t)a4;
- (void)updateKeysForTransitionProgress:(double)a3;
- (void)updateKeysInRowWithData:(id)a3;
- (void)updateKeysInRowWithStyle:(int64_t)a3 factory:(id)a4;
@end

@implementation TUIKeyplaneRow

- (TUIKeyplaneView)hostView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostView);

  return WeakRetained;
}

- (TUIKeyplaneRow)init
{
  v5.receiver = self;
  v5.super_class = TUIKeyplaneRow;
  v2 = [(TUIKeyplaneRow *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TUIKeyplaneRow *)v2 setUserInteractionEnabled:0];
  }

  return v3;
}

- (double)middlePaddingConstantFromFactory:(id)a3
{
  v4 = a3;
  v5 = [(TUIKeyplaneRow *)self hostView];
  v6 = [v5 keyplane];
  v7 = [v6 name];
  if (![v7 containsString:@"Wide"])
  {

    goto LABEL_5;
  }

  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
LABEL_5:
    [v4 dynamicInsets];
    v12 = v11;
    [v4 dynamicInsets];
    v10 = v12 + v13 + v12 + v13;
    goto LABEL_6;
  }

  [v4 wideKeyboardMiddlePadding];
  v10 = v9;
LABEL_6:

  return v10;
}

- (id)description
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(TUIKeyplaneRow *)self currentKeys];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) backingTree];
        v10 = [v9 name];
        [v3 appendFormat:@"[%@]", v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v11 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = TUIKeyplaneRow;
  v12 = [(TUIKeyplaneRow *)&v15 description];
  v13 = [v11 stringWithFormat:@"<%@ %@>", v12, v3];

  return v13;
}

- (BOOL)keyIsControlType:(id)a3
{
  v3 = a3;
  v4 = [v3 interactionType] == 4 || objc_msgSend(v3, "interactionType") == 5 || objc_msgSend(v3, "interactionType") == 6 || objc_msgSend(v3, "interactionType") == 9 || objc_msgSend(v3, "interactionType") == 10 || objc_msgSend(v3, "interactionType") == 11 || objc_msgSend(v3, "interactionType") == 13 || objc_msgSend(v3, "interactionType") == 14 || objc_msgSend(v3, "interactionType") == 37 || objc_msgSend(v3, "interactionType") == 38 || objc_msgSend(v3, "interactionType") == 17;

  return v4;
}

- (BOOL)keyIsSpaceType:(id)a3
{
  v3 = a3;
  v4 = [v3 interactionType] == 15 || objc_msgSend(v3, "displayType") == 25;

  return v4;
}

- (BOOL)keyIsStringType:(id)a3
{
  v3 = a3;
  v4 = [v3 interactionType] == 1 || objc_msgSend(v3, "interactionType") == 2 || objc_msgSend(v3, "interactionType") == 16;

  return v4;
}

- (id)constraintsForStringKeys:(id)a3 inRowGuide:(id)a4 matchingSizingGuide:(id)a5 splitIndex:(int64_t)a6
{
  v116[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v99 = a4;
  v97 = a5;
  v101 = [MEMORY[0x1E695DF70] array];
  v98 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  v10 = 0;
  if (![v9 count])
  {
    goto LABEL_50;
  }

  v11 = 0;
  v96 = v9;
  v100 = self;
  do
  {
    v12 = [v9 objectAtIndex:v11];
    v13 = [(TUIKeyplaneRow *)self hostView];
    v14 = [v13 keyViewForKey:v12];

    if (!v14)
    {
      goto LABEL_44;
    }

    v102 = v12;
    v103 = v11;
    if ([v14 layoutType] != 1)
    {
      if (v10 && [v10 layoutType] == 1)
      {
        v29 = [v98 rightAnchor];
        v30 = [v14 leftAnchor];
        v31 = [v29 constraintEqualToAnchor:v30];
        [v101 addObject:v31];
      }

      [v14 setRowNumber:{-[TUIKeyplaneRow rowNumberInKeyplane](self, "rowNumberInKeyplane")}];
      v32 = [(TUIKeyplaneRow *)self keyViews];
      [v32 addObject:v14];

      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      if (-[TUIKeyplaneRow rowType](self, "rowType") == 7 && [v14 layoutType] != 4)
      {
        if ([v14 layoutShape] == 2)
        {
          goto LABEL_13;
        }

        v33 = 1;
      }

      else
      {
        v33 = 0;
      }

      [v14 setLayoutShape:v33];
LABEL_13:
      [(TUIKeyplaneRow *)self addSubview:v14];
      if ([v14 layoutType] == 4)
      {
        v34 = [(TUIKeyplaneRow *)self hostView];
        v35 = [v34 supportsSplit];

        if (v35)
        {
          if ([v10 layoutType] == 4)
          {
            [(TUIKeyplaneRow *)self setExtraSpaceBar:v14];
            v36 = [(TUIKeyplaneRow *)self constraintsForSplitRow];
            v37 = [(TUIKeyplaneRow *)self splitLayoutGuide];
            v95 = [v37 leftAnchor];
            v92 = [v10 rightAnchor];
            v91 = [v95 constraintEqualToAnchor:v92 constant:0.0];
            v115[0] = v91;
            v38 = [v14 leftAnchor];
            v39 = [(TUIKeyplaneRow *)self splitLayoutGuide];
            v40 = [v39 rightAnchor];
            v41 = [v38 constraintEqualToAnchor:v40 constant:0.0];
            v115[1] = v41;
            v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:2];
            [v36 addObjectsFromArray:v42];

            v43 = [(TUIKeyplaneRow *)v100 constraintsForUnsplitRow];
            v44 = [v14 rightAnchor];
            v45 = [v10 rightAnchor];
            v46 = [v44 constraintEqualToAnchor:v45];
            v114[0] = v46;
            v47 = [v10 leftAnchor];
            v48 = [v14 leftAnchor];
            v49 = [v47 constraintEqualToAnchor:v48];
            v114[1] = v49;
            v50 = v43;
            v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:2];
            [v50 addObjectsFromArray:v51];
          }

          else
          {
            if (v10)
            {
LABEL_41:
              v66 = [v14 widthAnchor];
              v67 = [v97 widthAnchor];
              v71 = [v66 constraintGreaterThanOrEqualToAnchor:v67 multiplier:1.0];
              v112 = v71;
              a6 = -1;
              v72 = &v112;
LABEL_42:
              v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:1];
              [v101 addObjectsFromArray:v78];

              v79 = [v14 topAnchor];
              v80 = [v99 topAnchor];
              v81 = [v79 constraintEqualToAnchor:v80];
              v104[0] = v81;
              v82 = [v99 bottomAnchor];
              v83 = [v14 bottomAnchor];
              v84 = [v82 constraintEqualToAnchor:v83];
              v104[1] = v84;
              v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:2];
              [v101 addObjectsFromArray:v85];

              v86 = v14;
              v9 = v96;
              v23 = v10;
              self = v100;
              goto LABEL_43;
            }

            v50 = [v14 leftAnchor];
            v44 = [v99 leftAnchor];
            v45 = [v50 constraintEqualToAnchor:v44];
            v113 = v45;
            v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v113 count:1];
            [v101 addObjectsFromArray:v46];
          }

          goto LABEL_41;
        }
      }

      if (v10)
      {
        if ([v10 layoutType] == 1)
        {
          goto LABEL_28;
        }

        if (v11 == a6)
        {
          v52 = [(TUIKeyplaneRow *)self hostView];
          v53 = [v52 supportsSplit];

          if (v53)
          {
            v54 = [(TUIKeyplaneRow *)self splitSpacingGuide];
            v55 = [v54 leftAnchor];
            v56 = [v10 rightAnchor];
            v93 = [v55 constraintEqualToAnchor:v56];
            v111[0] = v93;
            v57 = [v14 leftAnchor];
            v58 = [(TUIKeyplaneRow *)self splitSpacingGuide];
            v59 = [v58 rightAnchor];
            v60 = [v57 constraintEqualToAnchor:v59];
            v111[1] = v60;
            v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:2];
            [v101 addObjectsFromArray:v61];

            self = v100;
LABEL_27:

LABEL_28:
            v63 = [v14 layoutType];
            v64 = [(TUIKeyplaneRow *)self rowType];
            v65 = v64;
            if (v63 == 4)
            {
              v66 = [v14 widthAnchor];
              v67 = [v97 widthAnchor];
              if (v65 == 7)
              {
                [v14 multiplier];
                v69 = v68;
                [v14 multiplier];
                v71 = [v66 constraintEqualToAnchor:v67 multiplier:v69 constant:(v70 + -1.0) * 0.0];
                v110 = v71;
                v72 = &v110;
              }

              else
              {
                v71 = [v66 constraintGreaterThanOrEqualToAnchor:v67 multiplier:1.0];
                v109 = v71;
                v72 = &v109;
              }
            }

            else if (v64 == 2 && ([v14 multiplier], v73 > 1.0))
            {
              if (v10)
              {
                [v14 multiplier];
                v75 = v74;
                [v10 multiplier];
                v77 = v76;
                v66 = [v14 widthAnchor];
                if (v75 == v77)
                {
                  v67 = [v10 widthAnchor];
                  v71 = [v66 constraintEqualToAnchor:v67 multiplier:1.0];
                  v108 = v71;
                  v72 = &v108;
                }

                else
                {
                  v67 = [v97 widthAnchor];
                  [v14 multiplier];
                  v71 = [v66 constraintEqualToAnchor:v67 multiplier:?];
                  v106 = v71;
                  v72 = &v106;
                }
              }

              else
              {
                v66 = [v14 widthAnchor];
                v67 = [v97 widthAnchor];
                [v14 multiplier];
                v71 = [v66 constraintGreaterThanOrEqualToAnchor:v67 multiplier:?];
                v107 = v71;
                v72 = &v107;
              }
            }

            else
            {
              v66 = [v14 widthAnchor];
              v67 = [v97 widthAnchor];
              [v14 multiplier];
              v71 = [v66 constraintEqualToAnchor:v67 multiplier:?];
              v105 = v71;
              v72 = &v105;
            }

            goto LABEL_42;
          }
        }

        v54 = [v14 leftAnchor];
        v55 = [v10 rightAnchor];
        v62 = [v54 constraintEqualToAnchor:v55 constant:0.0];
      }

      else
      {
        v54 = [v14 leftAnchor];
        v55 = [v99 leftAnchor];
        v62 = [v54 constraintEqualToAnchor:v55];
      }

      v56 = v62;
      [v101 addObject:v62];
      goto LABEL_27;
    }

    v15 = [v14 key];
    v16 = [v15 name];
    [v98 setIdentifier:v16];

    [(TUIKeyplaneRow *)self addLayoutGuide:v98];
    v17 = [(TUIKeyplaneRow *)self layoutGuidesForRow];
    [v17 addObject:v98];

    WeakRetained = objc_loadWeakRetained(&self->_hostView);
    v19 = [WeakRetained factory];
    [(TUIKeyplaneRow *)self middlePaddingConstantFromFactory:v19];
    v21 = v20;

    v22 = [v98 widthAnchor];
    v23 = [v22 constraintEqualToConstant:v21];

    v116[0] = v23;
    v24 = [v98 leftAnchor];
    v25 = [v10 rightAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v116[1] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:2];
    [v101 addObjectsFromArray:v27];

    self = v100;
    [(TUIKeyplaneRow *)v100 setMiddlePaddingWidthConstraint:v23];
    v28 = v14;

LABEL_43:
    v10 = v14;
    v12 = v102;
    v11 = v103;
LABEL_44:

    ++v11;
  }

  while (v11 < [v9 count]);
  if (v10)
  {
    v87 = [v99 rightAnchor];
    v88 = [v10 rightAnchor];
    v89 = [v87 constraintEqualToAnchor:v88];
    [v101 addObject:v89];
  }

LABEL_50:

  return v101;
}

- (void)layoutRowWithKeys:(id)a3 guide:(id)a4 type:(int64_t)a5
{
  v346[4] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v324 = v8;
  [(TUIKeyplaneRow *)self setCurrentKeys:v8];
  v10 = [(TUIKeyplaneRow *)self keyViews];

  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(TUIKeyplaneRow *)self setKeyViews:v11];
  }

  v12 = [(TUIKeyplaneRow *)self layoutGuidesForRow];

  if (!v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(TUIKeyplaneRow *)self setLayoutGuidesForRow:v13];
  }

  v303 = v9;
  if ([v8 count] > 1)
  {
    v32 = [(TUIKeyplaneRow *)self keySizingGuide];
    if (!v32)
    {
      goto LABEL_15;
    }

    v33 = v32;
    v34 = [(TUIKeyplaneRow *)self keySizingGuide];
    if ([v34 isEqual:v9])
    {
    }

    else
    {
      v36 = [(TUIKeyplaneRow *)self keySizingGuide];
      v37 = [v36 owningView];

      if (v37 != self)
      {
        goto LABEL_15;
      }

      v33 = [(TUIKeyplaneRow *)self keySizingGuide];
      [(TUIKeyplaneRow *)self removeLayoutGuide:v33];
    }

LABEL_15:
    [(TUIKeyplaneRow *)self setKeySizingGuide:v9];
    v38 = [(TUIKeyplaneRow *)self keySizingGuide];
    v39 = [v38 owningView];

    if (!v39)
    {
      v40 = [(TUIKeyplaneRow *)self keySizingGuide];
      [(TUIKeyplaneRow *)self addLayoutGuide:v40];
    }

    [(TUIKeyplaneRow *)self setRowType:a5];
    v41 = [(TUIKeyplaneRow *)self hostView];
    v42 = [v324 firstObject];
    v43 = [v41 keyViewForKey:v42];

    v44 = [(TUIKeyplaneRow *)self hostView];
    v45 = [v324 lastObject];
    v46 = [v44 keyViewForKey:v45];

    if (!a5)
    {
      v47 = [v43 layoutType];
      v48 = [v46 layoutType];
      if (v47 == 3)
      {
        if (v48 == 3)
        {
          a5 = 5;
        }

        else
        {
          a5 = 3;
        }
      }

      else if (v48 == 3)
      {
        a5 = 4;
      }

      else if (([v43 layoutType] == 2 || !objc_msgSend(v43, "layoutType")) && (objc_msgSend(v46, "layoutType") == 2 || !objc_msgSend(v46, "layoutType")))
      {
        a5 = 6;
      }

      else
      {
        a5 = 0;
      }
    }

    v301 = v43;
    v302 = a5;
    v300 = v46;
    v49 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Keyplane_Row_%li", -[TUIKeyplaneRow rowNumberInKeyplane](self, "rowNumberInKeyplane")];
    [v49 setIdentifier:v50];

    [(TUIKeyplaneRow *)self addLayoutGuide:v49];
    v51 = [(TUIKeyplaneRow *)self layoutGuidesForRow];
    [v51 addObject:v49];

    v52 = [(TUIKeyplaneRow *)self hostView];
    v53 = [v52 supportsSplit];

    if (v53)
    {
      v54 = [MEMORY[0x1E695DF70] array];
      [(TUIKeyplaneRow *)self setConstraintsForUnsplitRow:v54];

      v55 = [MEMORY[0x1E695DF70] array];
      [(TUIKeyplaneRow *)self setConstraintsForSplitRow:v55];
    }

    v308 = [v324 count];
    v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v57 = [v49 topAnchor];
    v58 = [(TUIKeyplaneRow *)self topAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];
    v345[0] = v59;
    v60 = [(TUIKeyplaneRow *)self bottomAnchor];
    v61 = [v49 bottomAnchor];
    v62 = [v60 constraintEqualToAnchor:v61];
    v345[1] = v62;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v345 count:2];
    v64 = v63 = self;
    [v56 addObjectsFromArray:v64];

    v304 = v63;
    v311 = v49;
    v317 = v56;
    if ([v301 layoutType] != 3)
    {
      v72 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Keyplane_Row_%li_Left_Padding", -[TUIKeyplaneRow rowNumberInKeyplane](v63, "rowNumberInKeyplane")];
      [v72 setIdentifier:v73];

      [(TUIKeyplaneRow *)v63 addLayoutGuide:v72];
      v74 = [(TUIKeyplaneRow *)v63 layoutGuidesForRow];
      [v74 addObject:v72];

      v75 = [v72 leftAnchor];
      v76 = [(TUIKeyplaneRow *)v63 leftAnchor];
      v77 = [v75 constraintEqualToAnchor:v76];
      v339[0] = v77;
      v78 = [v49 leftAnchor];
      v79 = [v72 rightAnchor];
      v80 = [v78 constraintEqualToAnchor:v79 constant:0.0];
      v339[1] = v80;
      v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:v339 count:2];
      [v317 addObjectsFromArray:v81];

      v65 = v63;
      if ([(TUIKeyplaneRow *)v63 edgeToEdge])
      {
        v82 = [v72 widthAnchor];
        v83 = [v82 constraintEqualToConstant:0.0];
        [v317 addObject:v83];

        v84 = v302;
        if (v302 != 6)
        {
          v96 = 0;
          v119 = 0;
          v321 = 1;
          v9 = v303;
          goto LABEL_71;
        }

        v85 = objc_alloc_init(MEMORY[0x1E69DCC20]);
        [(TUIKeyplaneRow *)v63 addLayoutGuide:v85];
        v86 = [(TUIKeyplaneRow *)v63 layoutGuidesForRow];
        [v86 addObject:v85];

        v319 = [v85 leftAnchor];
        v313 = [v311 rightAnchor];
        v87 = [v319 constraintEqualToAnchor:v313];
        v338[0] = v87;
        v88 = [(TUIKeyplaneRow *)v63 rightAnchor];
        v89 = [v85 rightAnchor];
        v90 = [v88 constraintEqualToAnchor:v89];
        v338[1] = v90;
        v91 = [v85 widthAnchor];
        v92 = [v91 constraintEqualToConstant:0.0];
        v338[2] = v92;
        v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:v338 count:3];
        [v317 addObjectsFromArray:v93];

        v65 = v304;
        v94 = v319;

        v95 = v313;
        v96 = 0;
        v9 = v303;
      }

      else
      {
        v84 = v302;
        v9 = v303;
        if (v302 == 6)
        {
          v85 = objc_alloc_init(MEMORY[0x1E69DCC20]);
          v120 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Keyplane_Row_%li_Right_Padding", -[TUIKeyplaneRow rowNumberInKeyplane](v63, "rowNumberInKeyplane")];
          [v85 setIdentifier:v120];

          [(TUIKeyplaneRow *)v63 addLayoutGuide:v85];
          v121 = [(TUIKeyplaneRow *)v63 layoutGuidesForRow];
          [v121 addObject:v85];

          if ([v301 layoutType])
          {
            v122 = 0;
            v123 = 0.0;
          }

          else
          {
            [v301 multiplier];
            v123 = v133;
            v134 = [v301 key];
            v135 = [v134 name];
            [v72 setIdentifier:v135];

            --v308;
            v122 = 1;
          }

          v305 = v122;
          if ([v300 layoutType])
          {
            v136 = [v85 widthAnchor];
            v137 = [v72 widthAnchor];
            v138 = [v136 constraintEqualToAnchor:v137];
            [v317 addObject:v138];

            v139 = v311;
          }

          else
          {
            v140 = [v300 key];
            v141 = [v140 name];
            [v85 setIdentifier:v141];

            [v301 multiplier];
            v143 = v142;
            [v300 multiplier];
            if (v143 != v144 || ([v300 multiplier], v145 == 0.0))
            {
              v146 = [v85 widthAnchor];
              v147 = [v303 widthAnchor];
              [v300 multiplier];
              v150 = v149;
              [v300 multiplier];
              v148 = [v146 constraintEqualToAnchor:v147 multiplier:v150 constant:v151 * 0.0];
            }

            else
            {
              v146 = [v85 widthAnchor];
              v147 = [v72 widthAnchor];
              v148 = [v146 constraintEqualToAnchor:v147];
            }

            v152 = v148;
            v139 = v311;
            [v317 addObject:v148];

            --v308;
            v65 = v63;
          }

          v322 = [v72 widthAnchor];
          v153 = [v303 widthAnchor];
          v314 = [v322 constraintEqualToAnchor:v153 multiplier:v123 constant:v123 * 0.0];
          v337[0] = v314;
          v298 = [v85 leftAnchor];
          v154 = [v139 rightAnchor];
          v155 = [v298 constraintEqualToAnchor:v154];
          v337[1] = v155;
          v156 = [(TUIKeyplaneRow *)v65 rightAnchor];
          v157 = [v85 rightAnchor];
          v158 = [v156 constraintEqualToAnchor:v157];
          v337[2] = v158;
          v159 = [MEMORY[0x1E695DEC8] arrayWithObjects:v337 count:3];
          [v317 addObjectsFromArray:v159];

          v95 = v153;
          v94 = v322;

          v9 = v303;
          v96 = v305;
        }

        else
        {
          if (v302 != 4)
          {
            v96 = 0;
            v119 = 0;
            v321 = 1;
            goto LABEL_71;
          }

          if ([v301 layoutType])
          {
            v96 = 0;
            v118 = 0.0;
          }

          else
          {
            [v301 multiplier];
            v118 = v130;
            v131 = [v301 key];
            v132 = [v131 name];
            [v72 setIdentifier:v132];

            --v308;
            v96 = 1;
          }

          v85 = [v72 widthAnchor];
          v94 = [v303 widthAnchor];
          v95 = [v85 constraintEqualToAnchor:v94 multiplier:v118 constant:v118 * 0.0];
          [v317 addObject:v95];
        }
      }

      v119 = 0;
      v116 = 1;
LABEL_70:

      v321 = v116;
      v84 = v302;
LABEL_71:

      v306 = v96;
      if (v84 == 3)
      {
        v160 = objc_alloc_init(MEMORY[0x1E69DCC20]);
        v161 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Keyplane_Row_%li_Right_Padding", -[TUIKeyplaneRow rowNumberInKeyplane](v65, "rowNumberInKeyplane")];
        [v160 setIdentifier:v161];

        [(TUIKeyplaneRow *)v65 addLayoutGuide:v160];
        v162 = [(TUIKeyplaneRow *)v65 layoutGuidesForRow];
        [v162 addObject:v160];

        v163 = [v160 leftAnchor];
        v164 = [v311 rightAnchor];
        v165 = [v163 constraintEqualToAnchor:v164];
        v336[0] = v165;
        v166 = [(TUIKeyplaneRow *)v65 rightAnchor];
        v167 = [v160 rightAnchor];
        [v166 constraintEqualToAnchor:v167];
        v169 = v168 = v65;
        v336[1] = v169;
        v170 = [MEMORY[0x1E695DEC8] arrayWithObjects:v336 count:2];
        [v317 addObjectsFromArray:v170];

        v171 = v300;
        if ([v300 layoutType])
        {
          [(TUIKeyplaneRow *)v168 edgeToEdge];
          v172 = 0.0;
        }

        else
        {
          [v300 multiplier];
          v172 = v173;
          v174 = [v300 key];
          v175 = [v174 name];
          [v160 setIdentifier:v175];

          --v308;
        }

        v9 = v303;
        v65 = v168;
        v176 = [v160 widthAnchor];
        v177 = [v303 widthAnchor];
        v178 = [v176 constraintEqualToAnchor:v177 multiplier:v172 constant:v172 * 0.0];
        [v317 addObject:v178];

        v96 = v306;
      }

      else
      {
        v171 = v300;
      }

      v179 = [(TUIKeyplaneRow *)v65 hostView];
      v180 = [v179 supportsSplit];

      if (v180)
      {
        v181 = [(TUIKeyplaneRow *)v65 hostView];
        [v181 totalSplitSizeForRow:{-[TUIKeyplaneRow rowNumberInKeyplane](v65, "rowNumberInKeyplane")}];
        v183 = v182;

        if (![v324 count])
        {
          goto LABEL_91;
        }

        v184 = 0;
        v315 = 0;
        v185 = floor(v183 * 0.5);
        v186 = 0.0;
        while (1)
        {
          v187 = [v324 objectAtIndexedSubscript:v184];
          if ([v187 layoutType] == 1)
          {

            goto LABEL_94;
          }

          v188 = [v187 layoutType];
          v189 = v315;
          if (v188 == 2)
          {
            v189 = v315 + 1;
          }

          v315 = v189;
          if (v185 <= v186)
          {
            break;
          }

          [v187 multiplier];
          v186 = v186 + v190;

          if (++v184 >= [v324 count])
          {
            goto LABEL_91;
          }
        }

        if (v315)
        {
          v191 = v315 - 1;
        }

        else
        {
LABEL_91:
          v315 = v308 / 2;
          if (v302 != 4)
          {
            goto LABEL_94;
          }

          [v171 multiplier];
          if (v192 <= 1.5)
          {
            goto LABEL_94;
          }

          v191 = v315 + 1;
        }
      }

      else
      {
        v191 = -1;
      }

      v315 = v191;
LABEL_94:
      v193 = [MEMORY[0x1E695DF70] array];
      v309 = v193;
      if (v96 >= [v324 count])
      {
        v295 = 0;
        v296 = 0;
        v299 = 0;
LABEL_164:
        if ([v193 count])
        {
          v280 = [(TUIKeyplaneRow *)v65 hostView];
          v281 = [v280 supportsSplit];

          if (v281)
          {
            v282 = v315;
          }

          else
          {
            v282 = -1;
          }

          v283 = [(TUIKeyplaneRow *)v65 constraintsForStringKeys:v193 inRowGuide:v311 matchingSizingGuide:v9 splitIndex:v282];
          [v317 addObjectsFromArray:v283];
        }

        v31 = v300;
        if (v302 <= 7 && ((1 << v302) & 0xB6) != 0)
        {
          v284 = [(TUIKeyplaneRow *)v65 subviews];
          v285 = [v284 containsObject:v300];

          if ((v285 & 1) == 0)
          {
            [v300 setTranslatesAutoresizingMaskIntoConstraints:0];
            if ([v300 layoutShape] == 2)
            {
              v286 = [(TUIKeyplaneRow *)v65 superview];
              [v286 addSubview:v300];

              v287 = [(TUIKeyplaneRow *)v65 doubleHeightKeys];

              if (!v287)
              {
                v288 = [MEMORY[0x1E695DF70] array];
                [(TUIKeyplaneRow *)v65 setDoubleHeightKeys:v288];
              }

              v289 = [(TUIKeyplaneRow *)v65 doubleHeightKeys];
              [v289 addObject:v300];
            }

            else
            {
              [(TUIKeyplaneRow *)v65 addSubview:v300];
            }
          }

          v290 = [(TUIKeyplaneRow *)v65 rightAnchor];
          v291 = [v300 rightAnchor];
          v292 = [v290 constraintEqualToAnchor:v291 constant:0.0];
          [v317 addObject:v292];
        }

        [(TUIKeyplaneRow *)v65 setLetterKeyConstraints:v317];
        [MEMORY[0x1E696ACD8] activateConstraints:v317];
        [(TUIKeyplaneRow *)v65 setNeedsLayout];

        goto LABEL_179;
      }

      v296 = 0;
      v299 = 0;
      v295 = 0;
      v194 = v96;
      while (1)
      {
        v195 = [v324 objectAtIndex:v194];
        if ([v195 layoutType] != 2 && objc_msgSend(v195, "layoutType") != 4 && objc_msgSend(v195, "layoutType") != 1)
        {
          break;
        }

        [v193 addObject:v195];
        if (v194 > v96 && !(([v119 layoutType] != 3) | v321 & 1))
        {
          v197 = [v311 leftAnchor];
          v198 = [v119 rightAnchor];
          v199 = [v197 constraintEqualToAnchor:v198 constant:0.0];
          v335 = v199;
          v321 = 1;
          v200 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v335 count:1];
          [v317 addObjectsFromArray:v200];

          v193 = v309;
          v96 = v306;

          v196 = v119;
          v119 = 0;
LABEL_103:

          v65 = v304;
          goto LABEL_104;
        }

        v196 = v119;
        v119 = 0;
LABEL_104:

LABEL_105:
        if (++v194 >= [v324 count])
        {
          goto LABEL_164;
        }
      }

      if (![v195 layoutType])
      {
        [v195 multiplier];
        if (v212 == 0.0 || !v194)
        {
          goto LABEL_105;
        }

        v213 = [v324 lastObject];
        v214 = [v195 isEqual:v213];

        if (v214)
        {
          goto LABEL_162;
        }

        v215 = [v193 count];
        if (!v119)
        {
          if (!v215)
          {
            v119 = 0;
LABEL_162:
            v96 = v306;
            goto LABEL_105;
          }

          v246 = objc_alloc_init(MEMORY[0x1E69DCC20]);

          v247 = [v195 backingTree];
          v248 = [v247 name];
          [v246 setIdentifier:v248];

          [(TUIKeyplaneRow *)v65 addLayoutGuide:v246];
          v249 = [(TUIKeyplaneRow *)v65 layoutGuidesForRow];
          [v249 addObject:v246];

          if (v296 && v295 && ([v195 multiplier], v251 = v250, objc_msgSend(v296, "multiplier"), v251 == v252))
          {
            v253 = [v246 widthAnchor];
            v254 = [v295 widthAnchor];
            v255 = [v253 constraintEqualToAnchor:v254];
            v256 = v317;
            [v317 addObject:v255];

            v257 = v311;
            v258 = 0x1E695D000;
          }

          else
          {
            v272 = [v246 widthAnchor];
            v273 = [v9 widthAnchor];
            [v195 multiplier];
            v275 = v274;
            [v195 multiplier];
            v253 = [v272 constraintEqualToAnchor:v273 multiplier:v275 constant:v276 * 0.0];

            LODWORD(v277) = 1144750080;
            [v253 setPriority:v277];
            v333 = v253;
            v258 = 0x1E695D000uLL;
            v254 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v333 count:1];
            v256 = v317;
            [v317 addObjectsFromArray:v254];
            v257 = v311;
          }

          v196 = [v246 leftAnchor];
          v197 = [v257 rightAnchor];
          v278 = [v196 constraintEqualToAnchor:v197];
          v332 = v278;
          v279 = [*(v258 + 3784) arrayWithObjects:&v332 count:1];
          [v256 addObjectsFromArray:v279];

          v119 = 0;
          v299 = v246;
          v96 = v306;
          v193 = v309;
          goto LABEL_103;
        }

        if (v215)
        {
          goto LABEL_162;
        }

        v216 = v195;

        v217 = objc_alloc_init(MEMORY[0x1E69DCC20]);
        v218 = [v216 backingTree];
        v219 = [v218 name];
        [v217 setIdentifier:v219];

        [(TUIKeyplaneRow *)v65 addLayoutGuide:v217];
        v220 = [(TUIKeyplaneRow *)v65 layoutGuidesForRow];
        [v220 addObject:v217];

        v221 = v217;
        v222 = [v217 widthAnchor];
        v223 = [v9 widthAnchor];
        v294 = v216;
        [v216 multiplier];
        v225 = v224;
        [v216 multiplier];
        v196 = [v222 constraintEqualToAnchor:v223 multiplier:v225 constant:v226 * 0.0];

        LODWORD(v227) = 1148813312;
        [v196 setPriority:v227];
        v228 = v221;
        v197 = [v221 leftAnchor];
        v323 = [v119 rightAnchor];
        v297 = [v197 constraintEqualToAnchor:v323];
        v334[0] = v297;
        v334[1] = v196;
        v229 = [v311 leftAnchor];
        v230 = [v228 rightAnchor];
        v231 = [v229 constraintEqualToAnchor:v230];
        v334[2] = v231;
        v232 = [MEMORY[0x1E695DEC8] arrayWithObjects:v334 count:3];
        [v317 addObjectsFromArray:v232];

        v193 = v309;
        v9 = v303;

        v321 = 1;
        v295 = v228;
        v296 = v294;
        goto LABEL_132;
      }

      v201 = [(TUIKeyplaneRow *)v65 hostView];
      v196 = [v201 keyViewForKey:v195];

      if (!v196)
      {
        goto LABEL_104;
      }

      [v196 setRowNumber:{-[TUIKeyplaneRow rowNumberInKeyplane](v65, "rowNumberInKeyplane")}];
      v202 = [(TUIKeyplaneRow *)v65 keyViews];
      [v202 addObject:v196];

      [v196 setTranslatesAutoresizingMaskIntoConstraints:0];
      if ([v196 layoutShape] == 2)
      {
        v203 = [(TUIKeyplaneRow *)v65 superview];
        [v203 addSubview:v196];

        if (v196 != v300)
        {
          v204 = [(TUIKeyplaneRow *)v65 doubleHeightKeys];

          if (!v204)
          {
            v205 = [MEMORY[0x1E695DF70] array];
            [(TUIKeyplaneRow *)v65 setDoubleHeightKeys:v205];
          }

          v206 = [(TUIKeyplaneRow *)v65 doubleHeightKeys];
          [v206 addObject:v196];
        }

        if (v302 == 7)
        {
          goto LABEL_124;
        }

        v207 = [v196 topAnchor];
        v208 = v311;
        v209 = [v311 topAnchor];
        v293 = v207;
        v210 = [v207 constraintEqualToAnchor:v209];
        v331 = v210;
        v211 = &v331;
      }

      else
      {
        [(TUIKeyplaneRow *)v65 addSubview:v196];
        v233 = [v196 topAnchor];
        v208 = v311;
        v209 = [v311 topAnchor];
        v293 = v233;
        v210 = [v233 constraintEqualToAnchor:v209];
        v330 = v210;
        v211 = &v330;
      }

      v234 = [v196 bottomAnchor];
      v235 = [v208 bottomAnchor];
      v236 = [v234 constraintEqualToAnchor:v235];
      v211[1] = v236;
      v237 = [MEMORY[0x1E695DEC8] arrayWithObjects:v211 count:2];
      [v317 addObjectsFromArray:v237];

      v9 = v303;
      v193 = v309;
LABEL_124:
      [v196 setLayoutShape:{objc_msgSend(v195, "layoutShape")}];
      if ([v196 layoutType] == 3)
      {
        if (v302 == 7 && [v196 layoutShape] != 2)
        {
          [v196 setLayoutShape:0];
        }

        [v196 multiplier];
        v239 = v238;
        v240 = [v196 widthAnchor];
        v241 = [v9 widthAnchor];
        v197 = [v240 constraintEqualToAnchor:v241 multiplier:v239];

        [v317 addObject:v197];
        if (v119)
        {
          if ([v119 layoutType] != 4)
          {
            v96 = v306;
            if ([v119 layoutType] != 3)
            {
              v193 = v309;
              if (v302 == 2)
              {
                if ([v309 count])
                {
                  LODWORD(v259) = 1148829696;
                  [v197 setPriority:v259];
                  v260 = [v196 leftAnchor];
                  v261 = [v119 rightAnchor];
                  v262 = [v260 constraintEqualToAnchor:v261 constant:0.0];
                  v327 = v262;
                  v263 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v327 count:1];
                  [v317 addObjectsFromArray:v263];

                  v9 = v303;
                  v96 = v306;
                }

                goto LABEL_152;
              }

LABEL_155:
              if (v194 >= v315)
              {
                v271 = 8;
              }

              else
              {
                v271 = 4;
              }

              [v196 updateLabelWeight:v271];
              v196 = v196;

              v119 = v196;
              goto LABEL_103;
            }

            v242 = [v196 leftAnchor];
            v243 = [v119 rightAnchor];
            v244 = [v242 constraintEqualToAnchor:v243 constant:0.0];
            v328 = v244;
            v245 = &v328;
            goto LABEL_150;
          }

          v242 = [v196 leftAnchor];
          v243 = [v311 rightAnchor];
          v244 = [v242 constraintEqualToAnchor:v243 constant:0.0];
          v329 = v244;
          v245 = &v329;
        }

        else
        {
          if (!v299)
          {
            v193 = v309;
            v96 = v306;
            if (![v309 count])
            {
              goto LABEL_151;
            }

            if (v302 == 2)
            {
              LODWORD(v264) = 1148829696;
              [v197 setPriority:v264];
            }

            v242 = [v196 leftAnchor];
            v243 = [v311 rightAnchor];
            v244 = [v242 constraintEqualToAnchor:v243 constant:0.0];
            v325 = v244;
            v245 = &v325;
LABEL_150:
            v265 = [MEMORY[0x1E695DEC8] arrayWithObjects:v245 count:1];
            [v317 addObjectsFromArray:v265];

            v193 = v309;
LABEL_151:
            v9 = v303;
            if (v302 == 2)
            {
LABEL_152:
              [v196 multiplier];
              v267 = v266;
              v268 = [v196 widthAnchor];
              v269 = [v9 widthAnchor];
              if (v267 <= 1.0)
              {
                [v196 multiplier];
              }

              v270 = [v268 constraintGreaterThanOrEqualToAnchor:v269 multiplier:?];
              [v317 addObject:v270];

              v9 = v303;
              v193 = v309;
              goto LABEL_155;
            }

            goto LABEL_155;
          }

          v242 = [v196 leftAnchor];
          v243 = [v299 rightAnchor];
          v244 = [v242 constraintEqualToAnchor:v243];
          v326 = v244;
          v245 = &v326;
        }

        v96 = v306;
        goto LABEL_150;
      }

      v196 = v196;
      v197 = v119;
      v119 = v196;
LABEL_132:
      v96 = v306;
      goto LABEL_103;
    }

    [v301 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v301 setRowNumber:{-[TUIKeyplaneRow rowNumberInKeyplane](v63, "rowNumberInKeyplane")}];
    v65 = v63;
    if ([v301 layoutShape] == 2)
    {
      v66 = [(TUIKeyplaneRow *)v63 superview];
      [v66 addSubview:v301];

      v67 = [(TUIKeyplaneRow *)v63 doubleHeightKeys];

      v101 = v301;
      v68 = v56;
      if (!v67)
      {
        v69 = [MEMORY[0x1E695DF70] array];
        [(TUIKeyplaneRow *)v65 setDoubleHeightKeys:v69];
      }

      v70 = [(TUIKeyplaneRow *)v65 doubleHeightKeys];
      [v70 addObject:v301];

      v71 = 0x1E695D000;
      if (v302 == 7)
      {
        goto LABEL_43;
      }

      v97 = [(TUIKeyplaneRow *)v65 bottomAnchor];
      v98 = [v301 bottomAnchor];
      v99 = [v97 constraintEqualToAnchor:v98 constant:0.0];
      v344 = v99;
      v100 = &v344;
    }

    else
    {
      [(TUIKeyplaneRow *)v63 addSubview:v301];
      v97 = [(TUIKeyplaneRow *)v63 bottomAnchor];
      v98 = [v301 bottomAnchor];
      v99 = [v97 constraintEqualToAnchor:v98 constant:0.0];
      v343 = v99;
      v100 = &v343;
      v101 = v301;
    }

    v102 = [v101 topAnchor];
    v103 = [(TUIKeyplaneRow *)v65 topAnchor];
    v104 = [v102 constraintEqualToAnchor:v103 constant:0.0];
    v100[1] = v104;
    v71 = 0x1E695D000uLL;
    v105 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:2];
    [v56 addObjectsFromArray:v105];

    v65 = v304;
    v68 = v56;
LABEL_43:
    v106 = [(TUIKeyplaneRow *)v65 keyViews];
    [v106 addObject:v101];

    [v101 updateLabelWeight:4];
    v107 = [v101 leftAnchor];
    v108 = [(TUIKeyplaneRow *)v65 leftAnchor];
    v109 = [v107 constraintEqualToAnchor:v108 constant:0.0];
    v342 = v109;
    v110 = [*(v71 + 3784) arrayWithObjects:&v342 count:1];
    [v68 addObjectsFromArray:v110];

    v111 = [v324 objectAtIndex:1];
    v320 = v111;
    if (v111)
    {
      v112 = v68;
      if ([v111 layoutType] == 2 || objc_msgSend(v320, "layoutType") == 4)
      {
        v113 = [v311 leftAnchor];
        v114 = [v101 rightAnchor];
        v115 = [v113 constraintEqualToAnchor:v114 constant:0.0];
        v341 = v115;
        v116 = 1;
        v117 = [*(v71 + 3784) arrayWithObjects:&v341 count:1];
        [v112 addObjectsFromArray:v117];
      }

      else
      {
        v116 = 0;
      }
    }

    else
    {
      v116 = 0;
      v112 = v68;
    }

    [v101 multiplier];
    v125 = v124;
    v126 = [v101 widthAnchor];
    v127 = [v303 widthAnchor];
    v85 = [v126 constraintEqualToAnchor:v127 multiplier:v125];

    v340 = v85;
    v128 = *(v71 + 3784);
    v9 = v303;
    v96 = 1;
    v129 = [v128 arrayWithObjects:&v340 count:1];
    [v112 addObjectsFromArray:v129];

    v119 = v101;
    v72 = v320;
    goto LABEL_70;
  }

  v14 = MEMORY[0x1E696ACD8];
  v15 = [(TUIKeyplaneRow *)self letterKeyConstraints];
  [v14 deactivateConstraints:v15];

  v16 = [(TUIKeyplaneRow *)self hostView];
  v17 = [v8 firstObject];
  v18 = [v16 keyViewForKey:v17];

  [(TUIKeyplaneRow *)self addSubview:v18];
  [v18 setRowNumber:{-[TUIKeyplaneRow rowNumberInKeyplane](self, "rowNumberInKeyplane")}];
  v19 = [(TUIKeyplaneRow *)self keyViews];
  [v19 addObject:v18];

  if (v18)
  {
    v318 = [v18 leadingAnchor];
    v316 = [(TUIKeyplaneRow *)self leadingAnchor];
    v312 = [v318 constraintEqualToAnchor:v316];
    v346[0] = v312;
    v310 = [v18 topAnchor];
    v307 = [(TUIKeyplaneRow *)self topAnchor];
    v20 = [v310 constraintEqualToAnchor:v307];
    v346[1] = v20;
    v21 = [(TUIKeyplaneRow *)self trailingAnchor];
    v22 = [v18 trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    v346[2] = v23;
    v24 = [(TUIKeyplaneRow *)self bottomAnchor];
    v301 = v18;
    v25 = [v18 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v346[3] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v346 count:4];
    v28 = self;
    v29 = [v27 mutableCopy];
    [(TUIKeyplaneRow *)v28 setLetterKeyConstraints:v29];

    v9 = v303;
    v30 = MEMORY[0x1E696ACD8];
    v31 = [(TUIKeyplaneRow *)v28 letterKeyConstraints];
    [v30 activateConstraints:v31];
LABEL_179:

    v35 = v301;
    goto LABEL_180;
  }

  v35 = 0;
LABEL_180:
}

- (id)doubleHeightKeysForRow
{
  v3 = [(TUIKeyplaneRow *)self doubleHeightKeys];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(TUIKeyplaneRow *)self doubleHeightKeys];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)rowHasDoubleHeightKeys
{
  v2 = [(TUIKeyplaneRow *)self doubleHeightKeys];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)splitLayoutGuide
{
  v3 = [(TUIKeyplaneRow *)self splitSpacingGuide];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    [(TUIKeyplaneRow *)self setSplitSpacingGuide:v4];

    v5 = [(TUIKeyplaneRow *)self splitSpacingGuide];
    [(TUIKeyplaneRow *)self addLayoutGuide:v5];
  }

  return [(TUIKeyplaneRow *)self splitSpacingGuide];
}

- (void)resetRow
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ACD8];
  v4 = [(TUIKeyplaneRow *)self letterKeyConstraints];
  [v3 deactivateConstraints:v4];

  [(TUIKeyplaneRow *)self setLetterKeyConstraints:0];
  v5 = [(TUIKeyplaneRow *)self constraintsForSplitRow];

  if (v5)
  {
    v6 = MEMORY[0x1E696ACD8];
    v7 = [(TUIKeyplaneRow *)self constraintsForSplitRow];
    [v6 deactivateConstraints:v7];

    v8 = MEMORY[0x1E696ACD8];
    v9 = [(TUIKeyplaneRow *)self constraintsForUnsplitRow];
    [v8 deactivateConstraints:v9];

    v10 = [(TUIKeyplaneRow *)self constraintsForSplitRow];
    [v10 removeAllObjects];

    v11 = [(TUIKeyplaneRow *)self constraintsForUnsplitRow];
    [v11 removeAllObjects];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = [(TUIKeyplaneRow *)self doubleHeightKeys];
  v13 = [v12 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v39;
    do
    {
      v16 = 0;
      do
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v38 + 1) + 8 * v16++) removeFromSuperview];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v14);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = [(TUIKeyplaneRow *)self keyViews];
  v18 = [v17 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    do
    {
      v21 = 0;
      do
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v34 + 1) + 8 * v21++) removeFromSuperview];
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v19);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v22 = [(TUIKeyplaneRow *)self layoutGuidesForRow];
  v23 = [v22 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v31;
    do
    {
      v26 = 0;
      do
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(TUIKeyplaneRow *)self removeLayoutGuide:*(*(&v30 + 1) + 8 * v26++)];
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v24);
  }

  v27 = [(TUIKeyplaneRow *)self layoutGuidesForRow];
  [v27 removeAllObjects];

  v28 = [(TUIKeyplaneRow *)self keyViews];
  [v28 removeAllObjects];

  v29 = [(TUIKeyplaneRow *)self doubleHeightKeys];
  [v29 removeAllObjects];
}

- (void)updateKeysInRowWithData:(id)a3
{
  v4 = a3;
  [(TUIKeyplaneRow *)self resetRow];
  v5 = [(TUIKeyplaneRow *)self keySizingGuide];
  [(TUIKeyplaneRow *)self layoutRowWithKeys:v4 guide:v5 type:[(TUIKeyplaneRow *)self rowType]];
}

- (void)updateKeysInRowWithStyle:(int64_t)a3 factory:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(TUIKeyplaneRow *)self keyViews];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        if (v6)
        {
          [*(*(&v17 + 1) + 8 * v11) setFactory:v6];
        }

        [v12 updateStyle:a3];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = [(TUIKeyplaneRow *)self middlePaddingWidthConstraint];

  if (v13)
  {
    [(TUIKeyplaneRow *)self middlePaddingConstantFromFactory:v6];
    v15 = v14;
    v16 = [(TUIKeyplaneRow *)self middlePaddingWidthConstraint];
    [v16 setConstant:v15];
  }
}

- (void)updateKeysForTransitionProgress:(double)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(TUIKeyplaneRow *)self keyViews];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) updateForTransitionProgress:a3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)updateKeysForTransition:(BOOL)a3 startStyle:(int64_t)a4 endStyle:(int64_t)a5
{
  v7 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(TUIKeyplaneRow *)self keyViews];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (v7)
        {
          [*(*(&v14 + 1) + 8 * v12) updateStyle:a4];
          [v13 prepareForTransition];
          [v13 prepareUpdatesForStyle:a4 toStyle:a5];
        }

        else
        {
          [*(*(&v14 + 1) + 8 * v12) finishTransition];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)updateKeysForTransition:(BOOL)a3 style:(int64_t)a4
{
  v5 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(TUIKeyplaneRow *)self keyViews];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (v5)
        {
          [*(*(&v12 + 1) + 8 * v10) updateStyle:a4];
          [v11 prepareForTransition];
        }

        else
        {
          [*(*(&v12 + 1) + 8 * v10) finishTransition];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)updateKeysForTransition:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(TUIKeyplaneRow *)self keyViews];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (v3)
        {
          [v9 prepareForTransition];
        }

        else
        {
          [v9 finishTransition];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)toggleConstraintsForSplit:(BOOL)a3
{
  v3 = a3;
  v5 = [(TUIKeyplaneRow *)self extraSpaceBar];
  v6 = v5;
  if (v3)
  {
    [v5 setHidden:0];

    v7 = [(TUIKeyplaneRow *)self constraintsForUnsplitRow];
    v8 = [v7 firstObject];
    v9 = [v8 isActive];

    if (v9)
    {
      v10 = MEMORY[0x1E696ACD8];
      v11 = [(TUIKeyplaneRow *)self constraintsForUnsplitRow];
      [v10 deactivateConstraints:v11];
    }

    v12 = [(TUIKeyplaneRow *)self constraintsForSplitRow];
    v13 = [v12 firstObject];
    v14 = [v13 isActive];

    if ((v14 & 1) == 0)
    {
      v15 = MEMORY[0x1E696ACD8];
      v16 = [(TUIKeyplaneRow *)self constraintsForSplitRow];
LABEL_10:
      v25 = v16;
      [v15 activateConstraints:v16];
    }
  }

  else
  {
    [v5 setHidden:1];

    v17 = [(TUIKeyplaneRow *)self constraintsForSplitRow];
    v18 = [v17 firstObject];
    v19 = [v18 isActive];

    if (v19)
    {
      v20 = MEMORY[0x1E696ACD8];
      v21 = [(TUIKeyplaneRow *)self constraintsForSplitRow];
      [v20 deactivateConstraints:v21];
    }

    v22 = [(TUIKeyplaneRow *)self constraintsForUnsplitRow];
    v23 = [v22 firstObject];
    v24 = [v23 isActive];

    if ((v24 & 1) == 0)
    {
      v15 = MEMORY[0x1E696ACD8];
      v16 = [(TUIKeyplaneRow *)self constraintsForUnsplitRow];
      goto LABEL_10;
    }
  }

  [(TUIKeyplaneRow *)self setNeedsLayout];
}

- (void)setRenderConfig:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(TUIKeyplaneRow *)self keyViews];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setRenderConfig:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)removeFromSuperview
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(TUIKeyplaneRow *)self keyViews];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = TUIKeyplaneRow;
  [(TUIKeyplaneRow *)&v8 removeFromSuperview];
}

+ (id)emptyRowForKeyplane:(id)a3 rowNumber:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(TUIKeyplaneRow);
  [(TUIKeyplaneRow *)v6 setHostView:v5];

  [(TUIKeyplaneRow *)v6 setRowNumberInKeyplane:a4];

  return v6;
}

+ (id)rowForKeyplane:(id)a3 keys:(id)a4 letterKeyGuide:(id)a5
{
  v5 = a3;
  v6 = objc_alloc_init(TUIKeyplaneRow);
  [(TUIKeyplaneRow *)v6 setHostView:v5];

  return v6;
}

@end