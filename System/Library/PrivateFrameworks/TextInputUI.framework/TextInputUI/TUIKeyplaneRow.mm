@interface TUIKeyplaneRow
+ (id)emptyRowForKeyplane:(id)keyplane rowNumber:(int64_t)number;
+ (id)rowForKeyplane:(id)keyplane keys:(id)keys letterKeyGuide:(id)guide;
- (BOOL)keyIsControlType:(id)type;
- (BOOL)keyIsSpaceType:(id)type;
- (BOOL)keyIsStringType:(id)type;
- (BOOL)rowHasDoubleHeightKeys;
- (TUIKeyplaneRow)init;
- (TUIKeyplaneView)hostView;
- (double)middlePaddingConstantFromFactory:(id)factory;
- (id)constraintsForStringKeys:(id)keys inRowGuide:(id)guide matchingSizingGuide:(id)sizingGuide splitIndex:(int64_t)index;
- (id)description;
- (id)doubleHeightKeysForRow;
- (id)splitLayoutGuide;
- (void)layoutRowWithKeys:(id)keys guide:(id)guide type:(int64_t)type;
- (void)removeFromSuperview;
- (void)resetRow;
- (void)setRenderConfig:(id)config;
- (void)toggleConstraintsForSplit:(BOOL)split;
- (void)updateKeysForTransition:(BOOL)transition;
- (void)updateKeysForTransition:(BOOL)transition startStyle:(int64_t)style endStyle:(int64_t)endStyle;
- (void)updateKeysForTransition:(BOOL)transition style:(int64_t)style;
- (void)updateKeysForTransitionProgress:(double)progress;
- (void)updateKeysInRowWithData:(id)data;
- (void)updateKeysInRowWithStyle:(int64_t)style factory:(id)factory;
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

- (double)middlePaddingConstantFromFactory:(id)factory
{
  factoryCopy = factory;
  hostView = [(TUIKeyplaneRow *)self hostView];
  keyplane = [hostView keyplane];
  name = [keyplane name];
  if (![name containsString:@"Wide"])
  {

    goto LABEL_5;
  }

  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0)
  {
LABEL_5:
    [factoryCopy dynamicInsets];
    v12 = v11;
    [factoryCopy dynamicInsets];
    v10 = v12 + v13 + v12 + v13;
    goto LABEL_6;
  }

  [factoryCopy wideKeyboardMiddlePadding];
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
  currentKeys = [(TUIKeyplaneRow *)self currentKeys];
  v5 = [currentKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(currentKeys);
        }

        backingTree = [*(*(&v16 + 1) + 8 * i) backingTree];
        name = [backingTree name];
        [v3 appendFormat:@"[%@]", name];
      }

      v6 = [currentKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (BOOL)keyIsControlType:(id)type
{
  typeCopy = type;
  v4 = [typeCopy interactionType] == 4 || objc_msgSend(typeCopy, "interactionType") == 5 || objc_msgSend(typeCopy, "interactionType") == 6 || objc_msgSend(typeCopy, "interactionType") == 9 || objc_msgSend(typeCopy, "interactionType") == 10 || objc_msgSend(typeCopy, "interactionType") == 11 || objc_msgSend(typeCopy, "interactionType") == 13 || objc_msgSend(typeCopy, "interactionType") == 14 || objc_msgSend(typeCopy, "interactionType") == 37 || objc_msgSend(typeCopy, "interactionType") == 38 || objc_msgSend(typeCopy, "interactionType") == 17;

  return v4;
}

- (BOOL)keyIsSpaceType:(id)type
{
  typeCopy = type;
  v4 = [typeCopy interactionType] == 15 || objc_msgSend(typeCopy, "displayType") == 25;

  return v4;
}

- (BOOL)keyIsStringType:(id)type
{
  typeCopy = type;
  v4 = [typeCopy interactionType] == 1 || objc_msgSend(typeCopy, "interactionType") == 2 || objc_msgSend(typeCopy, "interactionType") == 16;

  return v4;
}

- (id)constraintsForStringKeys:(id)keys inRowGuide:(id)guide matchingSizingGuide:(id)sizingGuide splitIndex:(int64_t)index
{
  v116[2] = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  guideCopy = guide;
  sizingGuideCopy = sizingGuide;
  array = [MEMORY[0x1E695DF70] array];
  v98 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  v10 = 0;
  if (![keysCopy count])
  {
    goto LABEL_50;
  }

  v11 = 0;
  v96 = keysCopy;
  selfCopy = self;
  do
  {
    v12 = [keysCopy objectAtIndex:v11];
    hostView = [(TUIKeyplaneRow *)self hostView];
    v14 = [hostView keyViewForKey:v12];

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
        rightAnchor = [v98 rightAnchor];
        leftAnchor = [v14 leftAnchor];
        v31 = [rightAnchor constraintEqualToAnchor:leftAnchor];
        [array addObject:v31];
      }

      [v14 setRowNumber:{-[TUIKeyplaneRow rowNumberInKeyplane](self, "rowNumberInKeyplane")}];
      keyViews = [(TUIKeyplaneRow *)self keyViews];
      [keyViews addObject:v14];

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
        hostView2 = [(TUIKeyplaneRow *)self hostView];
        supportsSplit = [hostView2 supportsSplit];

        if (supportsSplit)
        {
          if ([v10 layoutType] == 4)
          {
            [(TUIKeyplaneRow *)self setExtraSpaceBar:v14];
            constraintsForSplitRow = [(TUIKeyplaneRow *)self constraintsForSplitRow];
            splitLayoutGuide = [(TUIKeyplaneRow *)self splitLayoutGuide];
            leftAnchor2 = [splitLayoutGuide leftAnchor];
            rightAnchor2 = [v10 rightAnchor];
            v91 = [leftAnchor2 constraintEqualToAnchor:rightAnchor2 constant:0.0];
            v115[0] = v91;
            leftAnchor3 = [v14 leftAnchor];
            splitLayoutGuide2 = [(TUIKeyplaneRow *)self splitLayoutGuide];
            rightAnchor3 = [splitLayoutGuide2 rightAnchor];
            v41 = [leftAnchor3 constraintEqualToAnchor:rightAnchor3 constant:0.0];
            v115[1] = v41;
            v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:2];
            [constraintsForSplitRow addObjectsFromArray:v42];

            constraintsForUnsplitRow = [(TUIKeyplaneRow *)selfCopy constraintsForUnsplitRow];
            rightAnchor4 = [v14 rightAnchor];
            rightAnchor5 = [v10 rightAnchor];
            v46 = [rightAnchor4 constraintEqualToAnchor:rightAnchor5];
            v114[0] = v46;
            leftAnchor4 = [v10 leftAnchor];
            leftAnchor5 = [v14 leftAnchor];
            v49 = [leftAnchor4 constraintEqualToAnchor:leftAnchor5];
            v114[1] = v49;
            leftAnchor6 = constraintsForUnsplitRow;
            v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:2];
            [leftAnchor6 addObjectsFromArray:v51];
          }

          else
          {
            if (v10)
            {
LABEL_41:
              widthAnchor = [v14 widthAnchor];
              widthAnchor2 = [sizingGuideCopy widthAnchor];
              v71 = [widthAnchor constraintGreaterThanOrEqualToAnchor:widthAnchor2 multiplier:1.0];
              v112 = v71;
              index = -1;
              v72 = &v112;
LABEL_42:
              v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:1];
              [array addObjectsFromArray:v78];

              topAnchor = [v14 topAnchor];
              topAnchor2 = [guideCopy topAnchor];
              v81 = [topAnchor constraintEqualToAnchor:topAnchor2];
              v104[0] = v81;
              bottomAnchor = [guideCopy bottomAnchor];
              bottomAnchor2 = [v14 bottomAnchor];
              v84 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
              v104[1] = v84;
              v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:2];
              [array addObjectsFromArray:v85];

              v86 = v14;
              keysCopy = v96;
              v23 = v10;
              self = selfCopy;
              goto LABEL_43;
            }

            leftAnchor6 = [v14 leftAnchor];
            rightAnchor4 = [guideCopy leftAnchor];
            rightAnchor5 = [leftAnchor6 constraintEqualToAnchor:rightAnchor4];
            v113 = rightAnchor5;
            v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v113 count:1];
            [array addObjectsFromArray:v46];
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

        if (v11 == index)
        {
          hostView3 = [(TUIKeyplaneRow *)self hostView];
          supportsSplit2 = [hostView3 supportsSplit];

          if (supportsSplit2)
          {
            splitSpacingGuide = [(TUIKeyplaneRow *)self splitSpacingGuide];
            leftAnchor7 = [splitSpacingGuide leftAnchor];
            rightAnchor6 = [v10 rightAnchor];
            v93 = [leftAnchor7 constraintEqualToAnchor:rightAnchor6];
            v111[0] = v93;
            leftAnchor8 = [v14 leftAnchor];
            splitSpacingGuide2 = [(TUIKeyplaneRow *)self splitSpacingGuide];
            rightAnchor7 = [splitSpacingGuide2 rightAnchor];
            v60 = [leftAnchor8 constraintEqualToAnchor:rightAnchor7];
            v111[1] = v60;
            v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:2];
            [array addObjectsFromArray:v61];

            self = selfCopy;
LABEL_27:

LABEL_28:
            layoutType = [v14 layoutType];
            rowType = [(TUIKeyplaneRow *)self rowType];
            v65 = rowType;
            if (layoutType == 4)
            {
              widthAnchor = [v14 widthAnchor];
              widthAnchor2 = [sizingGuideCopy widthAnchor];
              if (v65 == 7)
              {
                [v14 multiplier];
                v69 = v68;
                [v14 multiplier];
                v71 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:v69 constant:(v70 + -1.0) * 0.0];
                v110 = v71;
                v72 = &v110;
              }

              else
              {
                v71 = [widthAnchor constraintGreaterThanOrEqualToAnchor:widthAnchor2 multiplier:1.0];
                v109 = v71;
                v72 = &v109;
              }
            }

            else if (rowType == 2 && ([v14 multiplier], v73 > 1.0))
            {
              if (v10)
              {
                [v14 multiplier];
                v75 = v74;
                [v10 multiplier];
                v77 = v76;
                widthAnchor = [v14 widthAnchor];
                if (v75 == v77)
                {
                  widthAnchor2 = [v10 widthAnchor];
                  v71 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0];
                  v108 = v71;
                  v72 = &v108;
                }

                else
                {
                  widthAnchor2 = [sizingGuideCopy widthAnchor];
                  [v14 multiplier];
                  v71 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:?];
                  v106 = v71;
                  v72 = &v106;
                }
              }

              else
              {
                widthAnchor = [v14 widthAnchor];
                widthAnchor2 = [sizingGuideCopy widthAnchor];
                [v14 multiplier];
                v71 = [widthAnchor constraintGreaterThanOrEqualToAnchor:widthAnchor2 multiplier:?];
                v107 = v71;
                v72 = &v107;
              }
            }

            else
            {
              widthAnchor = [v14 widthAnchor];
              widthAnchor2 = [sizingGuideCopy widthAnchor];
              [v14 multiplier];
              v71 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:?];
              v105 = v71;
              v72 = &v105;
            }

            goto LABEL_42;
          }
        }

        splitSpacingGuide = [v14 leftAnchor];
        leftAnchor7 = [v10 rightAnchor];
        v62 = [splitSpacingGuide constraintEqualToAnchor:leftAnchor7 constant:0.0];
      }

      else
      {
        splitSpacingGuide = [v14 leftAnchor];
        leftAnchor7 = [guideCopy leftAnchor];
        v62 = [splitSpacingGuide constraintEqualToAnchor:leftAnchor7];
      }

      rightAnchor6 = v62;
      [array addObject:v62];
      goto LABEL_27;
    }

    v15 = [v14 key];
    name = [v15 name];
    [v98 setIdentifier:name];

    [(TUIKeyplaneRow *)self addLayoutGuide:v98];
    layoutGuidesForRow = [(TUIKeyplaneRow *)self layoutGuidesForRow];
    [layoutGuidesForRow addObject:v98];

    WeakRetained = objc_loadWeakRetained(&self->_hostView);
    factory = [WeakRetained factory];
    [(TUIKeyplaneRow *)self middlePaddingConstantFromFactory:factory];
    v21 = v20;

    widthAnchor3 = [v98 widthAnchor];
    v23 = [widthAnchor3 constraintEqualToConstant:v21];

    v116[0] = v23;
    leftAnchor9 = [v98 leftAnchor];
    rightAnchor8 = [v10 rightAnchor];
    v26 = [leftAnchor9 constraintEqualToAnchor:rightAnchor8];
    v116[1] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:2];
    [array addObjectsFromArray:v27];

    self = selfCopy;
    [(TUIKeyplaneRow *)selfCopy setMiddlePaddingWidthConstraint:v23];
    v28 = v14;

LABEL_43:
    v10 = v14;
    v12 = v102;
    v11 = v103;
LABEL_44:

    ++v11;
  }

  while (v11 < [keysCopy count]);
  if (v10)
  {
    rightAnchor9 = [guideCopy rightAnchor];
    rightAnchor10 = [v10 rightAnchor];
    v89 = [rightAnchor9 constraintEqualToAnchor:rightAnchor10];
    [array addObject:v89];
  }

LABEL_50:

  return array;
}

- (void)layoutRowWithKeys:(id)keys guide:(id)guide type:(int64_t)type
{
  v346[4] = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  guideCopy = guide;
  v324 = keysCopy;
  [(TUIKeyplaneRow *)self setCurrentKeys:keysCopy];
  keyViews = [(TUIKeyplaneRow *)self keyViews];

  if (!keyViews)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(TUIKeyplaneRow *)self setKeyViews:v11];
  }

  layoutGuidesForRow = [(TUIKeyplaneRow *)self layoutGuidesForRow];

  if (!layoutGuidesForRow)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(TUIKeyplaneRow *)self setLayoutGuidesForRow:v13];
  }

  v303 = guideCopy;
  if ([keysCopy count] > 1)
  {
    keySizingGuide = [(TUIKeyplaneRow *)self keySizingGuide];
    if (!keySizingGuide)
    {
      goto LABEL_15;
    }

    keySizingGuide4 = keySizingGuide;
    keySizingGuide2 = [(TUIKeyplaneRow *)self keySizingGuide];
    if ([keySizingGuide2 isEqual:guideCopy])
    {
    }

    else
    {
      keySizingGuide3 = [(TUIKeyplaneRow *)self keySizingGuide];
      owningView = [keySizingGuide3 owningView];

      if (owningView != self)
      {
        goto LABEL_15;
      }

      keySizingGuide4 = [(TUIKeyplaneRow *)self keySizingGuide];
      [(TUIKeyplaneRow *)self removeLayoutGuide:keySizingGuide4];
    }

LABEL_15:
    [(TUIKeyplaneRow *)self setKeySizingGuide:guideCopy];
    keySizingGuide5 = [(TUIKeyplaneRow *)self keySizingGuide];
    owningView2 = [keySizingGuide5 owningView];

    if (!owningView2)
    {
      keySizingGuide6 = [(TUIKeyplaneRow *)self keySizingGuide];
      [(TUIKeyplaneRow *)self addLayoutGuide:keySizingGuide6];
    }

    [(TUIKeyplaneRow *)self setRowType:type];
    hostView = [(TUIKeyplaneRow *)self hostView];
    firstObject = [v324 firstObject];
    v43 = [hostView keyViewForKey:firstObject];

    hostView2 = [(TUIKeyplaneRow *)self hostView];
    lastObject = [v324 lastObject];
    v46 = [hostView2 keyViewForKey:lastObject];

    if (!type)
    {
      layoutType = [v43 layoutType];
      layoutType2 = [v46 layoutType];
      if (layoutType == 3)
      {
        if (layoutType2 == 3)
        {
          type = 5;
        }

        else
        {
          type = 3;
        }
      }

      else if (layoutType2 == 3)
      {
        type = 4;
      }

      else if (([v43 layoutType] == 2 || !objc_msgSend(v43, "layoutType")) && (objc_msgSend(v46, "layoutType") == 2 || !objc_msgSend(v46, "layoutType")))
      {
        type = 6;
      }

      else
      {
        type = 0;
      }
    }

    v301 = v43;
    typeCopy = type;
    v300 = v46;
    v49 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Keyplane_Row_%li", -[TUIKeyplaneRow rowNumberInKeyplane](self, "rowNumberInKeyplane")];
    [v49 setIdentifier:v50];

    [(TUIKeyplaneRow *)self addLayoutGuide:v49];
    layoutGuidesForRow2 = [(TUIKeyplaneRow *)self layoutGuidesForRow];
    [layoutGuidesForRow2 addObject:v49];

    hostView3 = [(TUIKeyplaneRow *)self hostView];
    supportsSplit = [hostView3 supportsSplit];

    if (supportsSplit)
    {
      array = [MEMORY[0x1E695DF70] array];
      [(TUIKeyplaneRow *)self setConstraintsForUnsplitRow:array];

      array2 = [MEMORY[0x1E695DF70] array];
      [(TUIKeyplaneRow *)self setConstraintsForSplitRow:array2];
    }

    v308 = [v324 count];
    v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
    topAnchor = [v49 topAnchor];
    topAnchor2 = [(TUIKeyplaneRow *)self topAnchor];
    v59 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v345[0] = v59;
    bottomAnchor = [(TUIKeyplaneRow *)self bottomAnchor];
    bottomAnchor2 = [v49 bottomAnchor];
    v62 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
      layoutGuidesForRow3 = [(TUIKeyplaneRow *)v63 layoutGuidesForRow];
      [layoutGuidesForRow3 addObject:v72];

      leftAnchor = [v72 leftAnchor];
      leftAnchor2 = [(TUIKeyplaneRow *)v63 leftAnchor];
      v77 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v339[0] = v77;
      leftAnchor3 = [v49 leftAnchor];
      rightAnchor = [v72 rightAnchor];
      v80 = [leftAnchor3 constraintEqualToAnchor:rightAnchor constant:0.0];
      v339[1] = v80;
      v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:v339 count:2];
      [v317 addObjectsFromArray:v81];

      v65 = v63;
      if ([(TUIKeyplaneRow *)v63 edgeToEdge])
      {
        widthAnchor = [v72 widthAnchor];
        v83 = [widthAnchor constraintEqualToConstant:0.0];
        [v317 addObject:v83];

        v84 = typeCopy;
        if (typeCopy != 6)
        {
          v96 = 0;
          v119 = 0;
          v321 = 1;
          guideCopy = v303;
          goto LABEL_71;
        }

        widthAnchor9 = objc_alloc_init(MEMORY[0x1E69DCC20]);
        [(TUIKeyplaneRow *)v63 addLayoutGuide:widthAnchor9];
        layoutGuidesForRow4 = [(TUIKeyplaneRow *)v63 layoutGuidesForRow];
        [layoutGuidesForRow4 addObject:widthAnchor9];

        leftAnchor4 = [widthAnchor9 leftAnchor];
        rightAnchor2 = [v311 rightAnchor];
        v87 = [leftAnchor4 constraintEqualToAnchor:rightAnchor2];
        v338[0] = v87;
        rightAnchor3 = [(TUIKeyplaneRow *)v63 rightAnchor];
        rightAnchor4 = [widthAnchor9 rightAnchor];
        v90 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
        v338[1] = v90;
        widthAnchor2 = [widthAnchor9 widthAnchor];
        v92 = [widthAnchor2 constraintEqualToConstant:0.0];
        v338[2] = v92;
        v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:v338 count:3];
        [v317 addObjectsFromArray:v93];

        v65 = v304;
        widthAnchor10 = leftAnchor4;

        v95 = rightAnchor2;
        v96 = 0;
        guideCopy = v303;
      }

      else
      {
        v84 = typeCopy;
        guideCopy = v303;
        if (typeCopy == 6)
        {
          widthAnchor9 = objc_alloc_init(MEMORY[0x1E69DCC20]);
          v120 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Keyplane_Row_%li_Right_Padding", -[TUIKeyplaneRow rowNumberInKeyplane](v63, "rowNumberInKeyplane")];
          [widthAnchor9 setIdentifier:v120];

          [(TUIKeyplaneRow *)v63 addLayoutGuide:widthAnchor9];
          layoutGuidesForRow5 = [(TUIKeyplaneRow *)v63 layoutGuidesForRow];
          [layoutGuidesForRow5 addObject:widthAnchor9];

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
            name = [v134 name];
            [v72 setIdentifier:name];

            --v308;
            v122 = 1;
          }

          v305 = v122;
          if ([v300 layoutType])
          {
            widthAnchor3 = [widthAnchor9 widthAnchor];
            widthAnchor4 = [v72 widthAnchor];
            v138 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
            [v317 addObject:v138];

            v139 = v311;
          }

          else
          {
            v140 = [v300 key];
            name2 = [v140 name];
            [widthAnchor9 setIdentifier:name2];

            [v301 multiplier];
            v143 = v142;
            [v300 multiplier];
            if (v143 != v144 || ([v300 multiplier], v145 == 0.0))
            {
              widthAnchor5 = [widthAnchor9 widthAnchor];
              widthAnchor6 = [v303 widthAnchor];
              [v300 multiplier];
              v150 = v149;
              [v300 multiplier];
              v148 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6 multiplier:v150 constant:v151 * 0.0];
            }

            else
            {
              widthAnchor5 = [widthAnchor9 widthAnchor];
              widthAnchor6 = [v72 widthAnchor];
              v148 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
            }

            v152 = v148;
            v139 = v311;
            [v317 addObject:v148];

            --v308;
            v65 = v63;
          }

          widthAnchor7 = [v72 widthAnchor];
          widthAnchor8 = [v303 widthAnchor];
          v314 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8 multiplier:v123 constant:v123 * 0.0];
          v337[0] = v314;
          leftAnchor5 = [widthAnchor9 leftAnchor];
          rightAnchor5 = [v139 rightAnchor];
          v155 = [leftAnchor5 constraintEqualToAnchor:rightAnchor5];
          v337[1] = v155;
          rightAnchor6 = [(TUIKeyplaneRow *)v65 rightAnchor];
          rightAnchor7 = [widthAnchor9 rightAnchor];
          v158 = [rightAnchor6 constraintEqualToAnchor:rightAnchor7];
          v337[2] = v158;
          v159 = [MEMORY[0x1E695DEC8] arrayWithObjects:v337 count:3];
          [v317 addObjectsFromArray:v159];

          v95 = widthAnchor8;
          widthAnchor10 = widthAnchor7;

          guideCopy = v303;
          v96 = v305;
        }

        else
        {
          if (typeCopy != 4)
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
            name3 = [v131 name];
            [v72 setIdentifier:name3];

            --v308;
            v96 = 1;
          }

          widthAnchor9 = [v72 widthAnchor];
          widthAnchor10 = [v303 widthAnchor];
          v95 = [widthAnchor9 constraintEqualToAnchor:widthAnchor10 multiplier:v118 constant:v118 * 0.0];
          [v317 addObject:v95];
        }
      }

      v119 = 0;
      v116 = 1;
LABEL_70:

      v321 = v116;
      v84 = typeCopy;
LABEL_71:

      v306 = v96;
      if (v84 == 3)
      {
        v160 = objc_alloc_init(MEMORY[0x1E69DCC20]);
        v161 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Keyplane_Row_%li_Right_Padding", -[TUIKeyplaneRow rowNumberInKeyplane](v65, "rowNumberInKeyplane")];
        [v160 setIdentifier:v161];

        [(TUIKeyplaneRow *)v65 addLayoutGuide:v160];
        layoutGuidesForRow6 = [(TUIKeyplaneRow *)v65 layoutGuidesForRow];
        [layoutGuidesForRow6 addObject:v160];

        leftAnchor6 = [v160 leftAnchor];
        rightAnchor8 = [v311 rightAnchor];
        v165 = [leftAnchor6 constraintEqualToAnchor:rightAnchor8];
        v336[0] = v165;
        rightAnchor9 = [(TUIKeyplaneRow *)v65 rightAnchor];
        rightAnchor10 = [v160 rightAnchor];
        [rightAnchor9 constraintEqualToAnchor:rightAnchor10];
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
          name4 = [v174 name];
          [v160 setIdentifier:name4];

          --v308;
        }

        guideCopy = v303;
        v65 = v168;
        widthAnchor11 = [v160 widthAnchor];
        widthAnchor12 = [v303 widthAnchor];
        v178 = [widthAnchor11 constraintEqualToAnchor:widthAnchor12 multiplier:v172 constant:v172 * 0.0];
        [v317 addObject:v178];

        v96 = v306;
      }

      else
      {
        v171 = v300;
      }

      hostView4 = [(TUIKeyplaneRow *)v65 hostView];
      supportsSplit2 = [hostView4 supportsSplit];

      if (supportsSplit2)
      {
        hostView5 = [(TUIKeyplaneRow *)v65 hostView];
        [hostView5 totalSplitSizeForRow:{-[TUIKeyplaneRow rowNumberInKeyplane](v65, "rowNumberInKeyplane")}];
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

          layoutType3 = [v187 layoutType];
          v189 = v315;
          if (layoutType3 == 2)
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
          if (typeCopy != 4)
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
      array3 = [MEMORY[0x1E695DF70] array];
      v309 = array3;
      if (v96 >= [v324 count])
      {
        v295 = 0;
        v296 = 0;
        v299 = 0;
LABEL_164:
        if ([array3 count])
        {
          hostView6 = [(TUIKeyplaneRow *)v65 hostView];
          supportsSplit3 = [hostView6 supportsSplit];

          if (supportsSplit3)
          {
            v282 = v315;
          }

          else
          {
            v282 = -1;
          }

          v283 = [(TUIKeyplaneRow *)v65 constraintsForStringKeys:array3 inRowGuide:v311 matchingSizingGuide:guideCopy splitIndex:v282];
          [v317 addObjectsFromArray:v283];
        }

        letterKeyConstraints2 = v300;
        if (typeCopy <= 7 && ((1 << typeCopy) & 0xB6) != 0)
        {
          subviews = [(TUIKeyplaneRow *)v65 subviews];
          v285 = [subviews containsObject:v300];

          if ((v285 & 1) == 0)
          {
            [v300 setTranslatesAutoresizingMaskIntoConstraints:0];
            if ([v300 layoutShape] == 2)
            {
              superview = [(TUIKeyplaneRow *)v65 superview];
              [superview addSubview:v300];

              doubleHeightKeys = [(TUIKeyplaneRow *)v65 doubleHeightKeys];

              if (!doubleHeightKeys)
              {
                array4 = [MEMORY[0x1E695DF70] array];
                [(TUIKeyplaneRow *)v65 setDoubleHeightKeys:array4];
              }

              doubleHeightKeys2 = [(TUIKeyplaneRow *)v65 doubleHeightKeys];
              [doubleHeightKeys2 addObject:v300];
            }

            else
            {
              [(TUIKeyplaneRow *)v65 addSubview:v300];
            }
          }

          rightAnchor11 = [(TUIKeyplaneRow *)v65 rightAnchor];
          rightAnchor12 = [v300 rightAnchor];
          v292 = [rightAnchor11 constraintEqualToAnchor:rightAnchor12 constant:0.0];
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

        [array3 addObject:v195];
        if (v194 > v96 && !(([v119 layoutType] != 3) | v321 & 1))
        {
          leftAnchor7 = [v311 leftAnchor];
          rightAnchor13 = [v119 rightAnchor];
          v199 = [leftAnchor7 constraintEqualToAnchor:rightAnchor13 constant:0.0];
          v335 = v199;
          v321 = 1;
          v200 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v335 count:1];
          [v317 addObjectsFromArray:v200];

          array3 = v309;
          v96 = v306;

          leftAnchor8 = v119;
          v119 = 0;
LABEL_103:

          v65 = v304;
          goto LABEL_104;
        }

        leftAnchor8 = v119;
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

        lastObject2 = [v324 lastObject];
        v214 = [v195 isEqual:lastObject2];

        if (v214)
        {
          goto LABEL_162;
        }

        v215 = [array3 count];
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

          backingTree = [v195 backingTree];
          name5 = [backingTree name];
          [v246 setIdentifier:name5];

          [(TUIKeyplaneRow *)v65 addLayoutGuide:v246];
          layoutGuidesForRow7 = [(TUIKeyplaneRow *)v65 layoutGuidesForRow];
          [layoutGuidesForRow7 addObject:v246];

          if (v296 && v295 && ([v195 multiplier], v251 = v250, objc_msgSend(v296, "multiplier"), v251 == v252))
          {
            widthAnchor13 = [v246 widthAnchor];
            widthAnchor14 = [v295 widthAnchor];
            v255 = [widthAnchor13 constraintEqualToAnchor:widthAnchor14];
            v256 = v317;
            [v317 addObject:v255];

            v257 = v311;
            v258 = 0x1E695D000;
          }

          else
          {
            widthAnchor15 = [v246 widthAnchor];
            widthAnchor16 = [guideCopy widthAnchor];
            [v195 multiplier];
            v275 = v274;
            [v195 multiplier];
            widthAnchor13 = [widthAnchor15 constraintEqualToAnchor:widthAnchor16 multiplier:v275 constant:v276 * 0.0];

            LODWORD(v277) = 1144750080;
            [widthAnchor13 setPriority:v277];
            v333 = widthAnchor13;
            v258 = 0x1E695D000uLL;
            widthAnchor14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v333 count:1];
            v256 = v317;
            [v317 addObjectsFromArray:widthAnchor14];
            v257 = v311;
          }

          leftAnchor8 = [v246 leftAnchor];
          leftAnchor7 = [v257 rightAnchor];
          v278 = [leftAnchor8 constraintEqualToAnchor:leftAnchor7];
          v332 = v278;
          v279 = [*(v258 + 3784) arrayWithObjects:&v332 count:1];
          [v256 addObjectsFromArray:v279];

          v119 = 0;
          v299 = v246;
          v96 = v306;
          array3 = v309;
          goto LABEL_103;
        }

        if (v215)
        {
          goto LABEL_162;
        }

        v216 = v195;

        v217 = objc_alloc_init(MEMORY[0x1E69DCC20]);
        backingTree2 = [v216 backingTree];
        name6 = [backingTree2 name];
        [v217 setIdentifier:name6];

        [(TUIKeyplaneRow *)v65 addLayoutGuide:v217];
        layoutGuidesForRow8 = [(TUIKeyplaneRow *)v65 layoutGuidesForRow];
        [layoutGuidesForRow8 addObject:v217];

        v221 = v217;
        widthAnchor17 = [v217 widthAnchor];
        widthAnchor18 = [guideCopy widthAnchor];
        v294 = v216;
        [v216 multiplier];
        v225 = v224;
        [v216 multiplier];
        leftAnchor8 = [widthAnchor17 constraintEqualToAnchor:widthAnchor18 multiplier:v225 constant:v226 * 0.0];

        LODWORD(v227) = 1148813312;
        [leftAnchor8 setPriority:v227];
        v228 = v221;
        leftAnchor7 = [v221 leftAnchor];
        rightAnchor14 = [v119 rightAnchor];
        v297 = [leftAnchor7 constraintEqualToAnchor:rightAnchor14];
        v334[0] = v297;
        v334[1] = leftAnchor8;
        leftAnchor9 = [v311 leftAnchor];
        rightAnchor15 = [v228 rightAnchor];
        v231 = [leftAnchor9 constraintEqualToAnchor:rightAnchor15];
        v334[2] = v231;
        v232 = [MEMORY[0x1E695DEC8] arrayWithObjects:v334 count:3];
        [v317 addObjectsFromArray:v232];

        array3 = v309;
        guideCopy = v303;

        v321 = 1;
        v295 = v228;
        v296 = v294;
        goto LABEL_132;
      }

      hostView7 = [(TUIKeyplaneRow *)v65 hostView];
      leftAnchor8 = [hostView7 keyViewForKey:v195];

      if (!leftAnchor8)
      {
        goto LABEL_104;
      }

      [leftAnchor8 setRowNumber:{-[TUIKeyplaneRow rowNumberInKeyplane](v65, "rowNumberInKeyplane")}];
      keyViews2 = [(TUIKeyplaneRow *)v65 keyViews];
      [keyViews2 addObject:leftAnchor8];

      [leftAnchor8 setTranslatesAutoresizingMaskIntoConstraints:0];
      if ([leftAnchor8 layoutShape] == 2)
      {
        superview2 = [(TUIKeyplaneRow *)v65 superview];
        [superview2 addSubview:leftAnchor8];

        if (leftAnchor8 != v300)
        {
          doubleHeightKeys3 = [(TUIKeyplaneRow *)v65 doubleHeightKeys];

          if (!doubleHeightKeys3)
          {
            array5 = [MEMORY[0x1E695DF70] array];
            [(TUIKeyplaneRow *)v65 setDoubleHeightKeys:array5];
          }

          doubleHeightKeys4 = [(TUIKeyplaneRow *)v65 doubleHeightKeys];
          [doubleHeightKeys4 addObject:leftAnchor8];
        }

        if (typeCopy == 7)
        {
          goto LABEL_124;
        }

        topAnchor3 = [leftAnchor8 topAnchor];
        v208 = v311;
        topAnchor4 = [v311 topAnchor];
        v293 = topAnchor3;
        v210 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
        v331 = v210;
        v211 = &v331;
      }

      else
      {
        [(TUIKeyplaneRow *)v65 addSubview:leftAnchor8];
        topAnchor5 = [leftAnchor8 topAnchor];
        v208 = v311;
        topAnchor4 = [v311 topAnchor];
        v293 = topAnchor5;
        v210 = [topAnchor5 constraintEqualToAnchor:topAnchor4];
        v330 = v210;
        v211 = &v330;
      }

      bottomAnchor3 = [leftAnchor8 bottomAnchor];
      bottomAnchor4 = [v208 bottomAnchor];
      v236 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v211[1] = v236;
      v237 = [MEMORY[0x1E695DEC8] arrayWithObjects:v211 count:2];
      [v317 addObjectsFromArray:v237];

      guideCopy = v303;
      array3 = v309;
LABEL_124:
      [leftAnchor8 setLayoutShape:{objc_msgSend(v195, "layoutShape")}];
      if ([leftAnchor8 layoutType] == 3)
      {
        if (typeCopy == 7 && [leftAnchor8 layoutShape] != 2)
        {
          [leftAnchor8 setLayoutShape:0];
        }

        [leftAnchor8 multiplier];
        v239 = v238;
        widthAnchor19 = [leftAnchor8 widthAnchor];
        widthAnchor20 = [guideCopy widthAnchor];
        leftAnchor7 = [widthAnchor19 constraintEqualToAnchor:widthAnchor20 multiplier:v239];

        [v317 addObject:leftAnchor7];
        if (v119)
        {
          if ([v119 layoutType] != 4)
          {
            v96 = v306;
            if ([v119 layoutType] != 3)
            {
              array3 = v309;
              if (typeCopy == 2)
              {
                if ([v309 count])
                {
                  LODWORD(v259) = 1148829696;
                  [leftAnchor7 setPriority:v259];
                  v196LeftAnchor = [leftAnchor8 leftAnchor];
                  rightAnchor16 = [v119 rightAnchor];
                  v262 = [v196LeftAnchor constraintEqualToAnchor:rightAnchor16 constant:0.0];
                  v327 = v262;
                  v263 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v327 count:1];
                  [v317 addObjectsFromArray:v263];

                  guideCopy = v303;
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

              [leftAnchor8 updateLabelWeight:v271];
              leftAnchor8 = leftAnchor8;

              v119 = leftAnchor8;
              goto LABEL_103;
            }

            v196LeftAnchor2 = [leftAnchor8 leftAnchor];
            rightAnchor17 = [v119 rightAnchor];
            v244 = [v196LeftAnchor2 constraintEqualToAnchor:rightAnchor17 constant:0.0];
            v328 = v244;
            v245 = &v328;
            goto LABEL_150;
          }

          v196LeftAnchor2 = [leftAnchor8 leftAnchor];
          rightAnchor17 = [v311 rightAnchor];
          v244 = [v196LeftAnchor2 constraintEqualToAnchor:rightAnchor17 constant:0.0];
          v329 = v244;
          v245 = &v329;
        }

        else
        {
          if (!v299)
          {
            array3 = v309;
            v96 = v306;
            if (![v309 count])
            {
              goto LABEL_151;
            }

            if (typeCopy == 2)
            {
              LODWORD(v264) = 1148829696;
              [leftAnchor7 setPriority:v264];
            }

            v196LeftAnchor2 = [leftAnchor8 leftAnchor];
            rightAnchor17 = [v311 rightAnchor];
            v244 = [v196LeftAnchor2 constraintEqualToAnchor:rightAnchor17 constant:0.0];
            v325 = v244;
            v245 = &v325;
LABEL_150:
            v265 = [MEMORY[0x1E695DEC8] arrayWithObjects:v245 count:1];
            [v317 addObjectsFromArray:v265];

            array3 = v309;
LABEL_151:
            guideCopy = v303;
            if (typeCopy == 2)
            {
LABEL_152:
              [leftAnchor8 multiplier];
              v267 = v266;
              widthAnchor21 = [leftAnchor8 widthAnchor];
              widthAnchor22 = [guideCopy widthAnchor];
              if (v267 <= 1.0)
              {
                [leftAnchor8 multiplier];
              }

              v270 = [widthAnchor21 constraintGreaterThanOrEqualToAnchor:widthAnchor22 multiplier:?];
              [v317 addObject:v270];

              guideCopy = v303;
              array3 = v309;
              goto LABEL_155;
            }

            goto LABEL_155;
          }

          v196LeftAnchor2 = [leftAnchor8 leftAnchor];
          rightAnchor17 = [v299 rightAnchor];
          v244 = [v196LeftAnchor2 constraintEqualToAnchor:rightAnchor17];
          v326 = v244;
          v245 = &v326;
        }

        v96 = v306;
        goto LABEL_150;
      }

      leftAnchor8 = leftAnchor8;
      leftAnchor7 = v119;
      v119 = leftAnchor8;
LABEL_132:
      v96 = v306;
      goto LABEL_103;
    }

    [v301 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v301 setRowNumber:{-[TUIKeyplaneRow rowNumberInKeyplane](v63, "rowNumberInKeyplane")}];
    v65 = v63;
    if ([v301 layoutShape] == 2)
    {
      superview3 = [(TUIKeyplaneRow *)v63 superview];
      [superview3 addSubview:v301];

      doubleHeightKeys5 = [(TUIKeyplaneRow *)v63 doubleHeightKeys];

      v101 = v301;
      v68 = v56;
      if (!doubleHeightKeys5)
      {
        array6 = [MEMORY[0x1E695DF70] array];
        [(TUIKeyplaneRow *)v65 setDoubleHeightKeys:array6];
      }

      doubleHeightKeys6 = [(TUIKeyplaneRow *)v65 doubleHeightKeys];
      [doubleHeightKeys6 addObject:v301];

      v71 = 0x1E695D000;
      if (typeCopy == 7)
      {
        goto LABEL_43;
      }

      bottomAnchor5 = [(TUIKeyplaneRow *)v65 bottomAnchor];
      bottomAnchor6 = [v301 bottomAnchor];
      v99 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:0.0];
      v344 = v99;
      v100 = &v344;
    }

    else
    {
      [(TUIKeyplaneRow *)v63 addSubview:v301];
      bottomAnchor5 = [(TUIKeyplaneRow *)v63 bottomAnchor];
      bottomAnchor6 = [v301 bottomAnchor];
      v99 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:0.0];
      v343 = v99;
      v100 = &v343;
      v101 = v301;
    }

    topAnchor6 = [v101 topAnchor];
    topAnchor7 = [(TUIKeyplaneRow *)v65 topAnchor];
    v104 = [topAnchor6 constraintEqualToAnchor:topAnchor7 constant:0.0];
    v100[1] = v104;
    v71 = 0x1E695D000uLL;
    v105 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:2];
    [v56 addObjectsFromArray:v105];

    v65 = v304;
    v68 = v56;
LABEL_43:
    keyViews3 = [(TUIKeyplaneRow *)v65 keyViews];
    [keyViews3 addObject:v101];

    [v101 updateLabelWeight:4];
    leftAnchor10 = [v101 leftAnchor];
    leftAnchor11 = [(TUIKeyplaneRow *)v65 leftAnchor];
    v109 = [leftAnchor10 constraintEqualToAnchor:leftAnchor11 constant:0.0];
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
        leftAnchor12 = [v311 leftAnchor];
        rightAnchor18 = [v101 rightAnchor];
        v115 = [leftAnchor12 constraintEqualToAnchor:rightAnchor18 constant:0.0];
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
    widthAnchor23 = [v101 widthAnchor];
    widthAnchor24 = [v303 widthAnchor];
    widthAnchor9 = [widthAnchor23 constraintEqualToAnchor:widthAnchor24 multiplier:v125];

    v340 = widthAnchor9;
    v128 = *(v71 + 3784);
    guideCopy = v303;
    v96 = 1;
    v129 = [v128 arrayWithObjects:&v340 count:1];
    [v112 addObjectsFromArray:v129];

    v119 = v101;
    v72 = v320;
    goto LABEL_70;
  }

  v14 = MEMORY[0x1E696ACD8];
  letterKeyConstraints = [(TUIKeyplaneRow *)self letterKeyConstraints];
  [v14 deactivateConstraints:letterKeyConstraints];

  hostView8 = [(TUIKeyplaneRow *)self hostView];
  firstObject2 = [keysCopy firstObject];
  v18 = [hostView8 keyViewForKey:firstObject2];

  [(TUIKeyplaneRow *)self addSubview:v18];
  [v18 setRowNumber:{-[TUIKeyplaneRow rowNumberInKeyplane](self, "rowNumberInKeyplane")}];
  keyViews4 = [(TUIKeyplaneRow *)self keyViews];
  [keyViews4 addObject:v18];

  if (v18)
  {
    leadingAnchor = [v18 leadingAnchor];
    leadingAnchor2 = [(TUIKeyplaneRow *)self leadingAnchor];
    v312 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v346[0] = v312;
    topAnchor8 = [v18 topAnchor];
    topAnchor9 = [(TUIKeyplaneRow *)self topAnchor];
    v20 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
    v346[1] = v20;
    trailingAnchor = [(TUIKeyplaneRow *)self trailingAnchor];
    trailingAnchor2 = [v18 trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v346[2] = v23;
    bottomAnchor7 = [(TUIKeyplaneRow *)self bottomAnchor];
    v301 = v18;
    bottomAnchor8 = [v18 bottomAnchor];
    v26 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
    v346[3] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v346 count:4];
    selfCopy = self;
    v29 = [v27 mutableCopy];
    [(TUIKeyplaneRow *)selfCopy setLetterKeyConstraints:v29];

    guideCopy = v303;
    v30 = MEMORY[0x1E696ACD8];
    letterKeyConstraints2 = [(TUIKeyplaneRow *)selfCopy letterKeyConstraints];
    [v30 activateConstraints:letterKeyConstraints2];
LABEL_179:

    v35 = v301;
    goto LABEL_180;
  }

  v35 = 0;
LABEL_180:
}

- (id)doubleHeightKeysForRow
{
  doubleHeightKeys = [(TUIKeyplaneRow *)self doubleHeightKeys];
  v4 = [doubleHeightKeys count];

  if (v4)
  {
    doubleHeightKeys2 = [(TUIKeyplaneRow *)self doubleHeightKeys];
  }

  else
  {
    doubleHeightKeys2 = 0;
  }

  return doubleHeightKeys2;
}

- (BOOL)rowHasDoubleHeightKeys
{
  doubleHeightKeys = [(TUIKeyplaneRow *)self doubleHeightKeys];
  v3 = [doubleHeightKeys count] != 0;

  return v3;
}

- (id)splitLayoutGuide
{
  splitSpacingGuide = [(TUIKeyplaneRow *)self splitSpacingGuide];

  if (!splitSpacingGuide)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    [(TUIKeyplaneRow *)self setSplitSpacingGuide:v4];

    splitSpacingGuide2 = [(TUIKeyplaneRow *)self splitSpacingGuide];
    [(TUIKeyplaneRow *)self addLayoutGuide:splitSpacingGuide2];
  }

  return [(TUIKeyplaneRow *)self splitSpacingGuide];
}

- (void)resetRow
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ACD8];
  letterKeyConstraints = [(TUIKeyplaneRow *)self letterKeyConstraints];
  [v3 deactivateConstraints:letterKeyConstraints];

  [(TUIKeyplaneRow *)self setLetterKeyConstraints:0];
  constraintsForSplitRow = [(TUIKeyplaneRow *)self constraintsForSplitRow];

  if (constraintsForSplitRow)
  {
    v6 = MEMORY[0x1E696ACD8];
    constraintsForSplitRow2 = [(TUIKeyplaneRow *)self constraintsForSplitRow];
    [v6 deactivateConstraints:constraintsForSplitRow2];

    v8 = MEMORY[0x1E696ACD8];
    constraintsForUnsplitRow = [(TUIKeyplaneRow *)self constraintsForUnsplitRow];
    [v8 deactivateConstraints:constraintsForUnsplitRow];

    constraintsForSplitRow3 = [(TUIKeyplaneRow *)self constraintsForSplitRow];
    [constraintsForSplitRow3 removeAllObjects];

    constraintsForUnsplitRow2 = [(TUIKeyplaneRow *)self constraintsForUnsplitRow];
    [constraintsForUnsplitRow2 removeAllObjects];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  doubleHeightKeys = [(TUIKeyplaneRow *)self doubleHeightKeys];
  v13 = [doubleHeightKeys countByEnumeratingWithState:&v38 objects:v44 count:16];
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
          objc_enumerationMutation(doubleHeightKeys);
        }

        [*(*(&v38 + 1) + 8 * v16++) removeFromSuperview];
      }

      while (v14 != v16);
      v14 = [doubleHeightKeys countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v14);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  keyViews = [(TUIKeyplaneRow *)self keyViews];
  v18 = [keyViews countByEnumeratingWithState:&v34 objects:v43 count:16];
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
          objc_enumerationMutation(keyViews);
        }

        [*(*(&v34 + 1) + 8 * v21++) removeFromSuperview];
      }

      while (v19 != v21);
      v19 = [keyViews countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v19);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  layoutGuidesForRow = [(TUIKeyplaneRow *)self layoutGuidesForRow];
  v23 = [layoutGuidesForRow countByEnumeratingWithState:&v30 objects:v42 count:16];
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
          objc_enumerationMutation(layoutGuidesForRow);
        }

        [(TUIKeyplaneRow *)self removeLayoutGuide:*(*(&v30 + 1) + 8 * v26++)];
      }

      while (v24 != v26);
      v24 = [layoutGuidesForRow countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v24);
  }

  layoutGuidesForRow2 = [(TUIKeyplaneRow *)self layoutGuidesForRow];
  [layoutGuidesForRow2 removeAllObjects];

  keyViews2 = [(TUIKeyplaneRow *)self keyViews];
  [keyViews2 removeAllObjects];

  doubleHeightKeys2 = [(TUIKeyplaneRow *)self doubleHeightKeys];
  [doubleHeightKeys2 removeAllObjects];
}

- (void)updateKeysInRowWithData:(id)data
{
  dataCopy = data;
  [(TUIKeyplaneRow *)self resetRow];
  keySizingGuide = [(TUIKeyplaneRow *)self keySizingGuide];
  [(TUIKeyplaneRow *)self layoutRowWithKeys:dataCopy guide:keySizingGuide type:[(TUIKeyplaneRow *)self rowType]];
}

- (void)updateKeysInRowWithStyle:(int64_t)style factory:(id)factory
{
  v22 = *MEMORY[0x1E69E9840];
  factoryCopy = factory;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  keyViews = [(TUIKeyplaneRow *)self keyViews];
  v8 = [keyViews countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(keyViews);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        if (factoryCopy)
        {
          [*(*(&v17 + 1) + 8 * v11) setFactory:factoryCopy];
        }

        [v12 updateStyle:style];
        ++v11;
      }

      while (v9 != v11);
      v9 = [keyViews countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  middlePaddingWidthConstraint = [(TUIKeyplaneRow *)self middlePaddingWidthConstraint];

  if (middlePaddingWidthConstraint)
  {
    [(TUIKeyplaneRow *)self middlePaddingConstantFromFactory:factoryCopy];
    v15 = v14;
    middlePaddingWidthConstraint2 = [(TUIKeyplaneRow *)self middlePaddingWidthConstraint];
    [middlePaddingWidthConstraint2 setConstant:v15];
  }
}

- (void)updateKeysForTransitionProgress:(double)progress
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  keyViews = [(TUIKeyplaneRow *)self keyViews];
  v5 = [keyViews countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(keyViews);
        }

        [*(*(&v9 + 1) + 8 * v8++) updateForTransitionProgress:progress];
      }

      while (v6 != v8);
      v6 = [keyViews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)updateKeysForTransition:(BOOL)transition startStyle:(int64_t)style endStyle:(int64_t)endStyle
{
  transitionCopy = transition;
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  keyViews = [(TUIKeyplaneRow *)self keyViews];
  v9 = [keyViews countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(keyViews);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (transitionCopy)
        {
          [*(*(&v14 + 1) + 8 * v12) updateStyle:style];
          [v13 prepareForTransition];
          [v13 prepareUpdatesForStyle:style toStyle:endStyle];
        }

        else
        {
          [*(*(&v14 + 1) + 8 * v12) finishTransition];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [keyViews countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)updateKeysForTransition:(BOOL)transition style:(int64_t)style
{
  transitionCopy = transition;
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  keyViews = [(TUIKeyplaneRow *)self keyViews];
  v7 = [keyViews countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(keyViews);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (transitionCopy)
        {
          [*(*(&v12 + 1) + 8 * v10) updateStyle:style];
          [v11 prepareForTransition];
        }

        else
        {
          [*(*(&v12 + 1) + 8 * v10) finishTransition];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [keyViews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)updateKeysForTransition:(BOOL)transition
{
  transitionCopy = transition;
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  keyViews = [(TUIKeyplaneRow *)self keyViews];
  v5 = [keyViews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(keyViews);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (transitionCopy)
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
      v6 = [keyViews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)toggleConstraintsForSplit:(BOOL)split
{
  splitCopy = split;
  extraSpaceBar = [(TUIKeyplaneRow *)self extraSpaceBar];
  v6 = extraSpaceBar;
  if (splitCopy)
  {
    [extraSpaceBar setHidden:0];

    constraintsForUnsplitRow = [(TUIKeyplaneRow *)self constraintsForUnsplitRow];
    firstObject = [constraintsForUnsplitRow firstObject];
    isActive = [firstObject isActive];

    if (isActive)
    {
      v10 = MEMORY[0x1E696ACD8];
      constraintsForUnsplitRow2 = [(TUIKeyplaneRow *)self constraintsForUnsplitRow];
      [v10 deactivateConstraints:constraintsForUnsplitRow2];
    }

    constraintsForSplitRow = [(TUIKeyplaneRow *)self constraintsForSplitRow];
    firstObject2 = [constraintsForSplitRow firstObject];
    isActive2 = [firstObject2 isActive];

    if ((isActive2 & 1) == 0)
    {
      v15 = MEMORY[0x1E696ACD8];
      constraintsForSplitRow2 = [(TUIKeyplaneRow *)self constraintsForSplitRow];
LABEL_10:
      v25 = constraintsForSplitRow2;
      [v15 activateConstraints:constraintsForSplitRow2];
    }
  }

  else
  {
    [extraSpaceBar setHidden:1];

    constraintsForSplitRow3 = [(TUIKeyplaneRow *)self constraintsForSplitRow];
    firstObject3 = [constraintsForSplitRow3 firstObject];
    isActive3 = [firstObject3 isActive];

    if (isActive3)
    {
      v20 = MEMORY[0x1E696ACD8];
      constraintsForSplitRow4 = [(TUIKeyplaneRow *)self constraintsForSplitRow];
      [v20 deactivateConstraints:constraintsForSplitRow4];
    }

    constraintsForUnsplitRow3 = [(TUIKeyplaneRow *)self constraintsForUnsplitRow];
    firstObject4 = [constraintsForUnsplitRow3 firstObject];
    isActive4 = [firstObject4 isActive];

    if ((isActive4 & 1) == 0)
    {
      v15 = MEMORY[0x1E696ACD8];
      constraintsForSplitRow2 = [(TUIKeyplaneRow *)self constraintsForUnsplitRow];
      goto LABEL_10;
    }
  }

  [(TUIKeyplaneRow *)self setNeedsLayout];
}

- (void)setRenderConfig:(id)config
{
  v15 = *MEMORY[0x1E69E9840];
  configCopy = config;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  keyViews = [(TUIKeyplaneRow *)self keyViews];
  v6 = [keyViews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(keyViews);
        }

        [*(*(&v10 + 1) + 8 * v9++) setRenderConfig:configCopy];
      }

      while (v7 != v9);
      v7 = [keyViews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  keyViews = [(TUIKeyplaneRow *)self keyViews];
  v4 = [keyViews countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(keyViews);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [keyViews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = TUIKeyplaneRow;
  [(TUIKeyplaneRow *)&v8 removeFromSuperview];
}

+ (id)emptyRowForKeyplane:(id)keyplane rowNumber:(int64_t)number
{
  keyplaneCopy = keyplane;
  v6 = objc_alloc_init(TUIKeyplaneRow);
  [(TUIKeyplaneRow *)v6 setHostView:keyplaneCopy];

  [(TUIKeyplaneRow *)v6 setRowNumberInKeyplane:number];

  return v6;
}

+ (id)rowForKeyplane:(id)keyplane keys:(id)keys letterKeyGuide:(id)guide
{
  keyplaneCopy = keyplane;
  v6 = objc_alloc_init(TUIKeyplaneRow);
  [(TUIKeyplaneRow *)v6 setHostView:keyplaneCopy];

  return v6;
}

@end