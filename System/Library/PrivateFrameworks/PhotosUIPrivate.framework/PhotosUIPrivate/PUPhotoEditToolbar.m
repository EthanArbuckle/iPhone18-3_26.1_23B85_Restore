@interface PUPhotoEditToolbar
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PUPhotoEditToolbar)initWithFrame:(CGRect)a3;
- (PUPhotoEditToolbarDelegate)delegate;
- (UIEdgeInsets)contentPadding;
- (double)shortSideSize;
- (double)tabBarHeight;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_addCenterConstraintsWithMetrics:(id)a3 verticalLayout:(BOOL)a4;
- (void)_addLeadingConstraintsWithMetrics:(id)a3 verticalLayout:(BOOL)a4;
- (void)_addTrailingConstraintsWithMetrics:(id)a3 verticalLayout:(BOOL)a4;
- (void)_invalidateAllConstraints;
- (void)_setToolButtons:(id)a3 buttonSpacing:(int64_t)a4 mainActionButton:(id)a5 secondaryActionButton:(id)a6 stretchableView:(id)a7;
- (void)accessibilityLongPressChanged:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setContentPadding:(UIEdgeInsets)a3;
- (void)setLongSideMargin:(double)a3;
- (void)setToolButtons:(id)a3 mainActionButton:(id)a4 secondaryActionButton:(id)a5 stretchableView:(id)a6;
- (void)setTransform:(CGAffineTransform *)a3;
- (void)setUseLargeShortSideHeight:(BOOL)a3;
- (void)setUseiPhonePrimaryPortraitHeight:(BOOL)a3;
- (void)setupWithLayoutOrientation:(int64_t)a3;
- (void)updateConstraints;
@end

@implementation PUPhotoEditToolbar

- (PUPhotoEditToolbarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)contentPadding
{
  top = self->_contentPadding.top;
  left = self->_contentPadding.left;
  bottom = self->_contentPadding.bottom;
  right = self->_contentPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)accessibilityLongPressChanged:(id)a3
{
  v4 = a3;
  [v4 locationInView:self];
  v14 = [(PUPhotoEditToolbar *)self hitTest:0 withEvent:?];
  v5 = [v4 state];

  if ((v5 - 1) < 2)
  {
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v14;
        v8 = [(PUPhotoEditToolbar *)self delegate];
        v9 = [v8 photoEditToolbar:self accessibilityHUDItemForButton:v7];

        v10 = [(PUPhotoEditToolbar *)self delegate];
        v11 = v10;
        if (v9)
        {
          [v10 photoEditToolbar:self showAccessibilityHUDForItem:v9];
        }

        else
        {
          [v10 dismissAccessibilityHUDForPhotoEditToolbar:self];
        }

        goto LABEL_13;
      }
    }

LABEL_10:
    v7 = [(PUPhotoEditToolbar *)self delegate];
    [v7 dismissAccessibilityHUDForPhotoEditToolbar:self];
LABEL_13:

    goto LABEL_14;
  }

  if (v5 != 3)
  {
    goto LABEL_10;
  }

  v12 = v14;
  if (v14)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v12 = v14;
    if (isKindOfClass)
    {
      v13 = [(PUPhotoEditToolbar *)self delegate];
      [v13 dismissAccessibilityHUDForPhotoEditToolbar:self];

      isKindOfClass = [v14 pu_sendActionForControlEventsWithHighlightTimeout:64];
LABEL_14:
      v12 = v14;
    }
  }

  MEMORY[0x1EEE66BB8](isKindOfClass, v12);
}

- (void)_addCenterConstraintsWithMetrics:(id)a3 verticalLayout:(BOOL)a4
{
  v167 = a4;
  v175 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PUPhotoEditToolbar *)self buttonSpacing];
  v163 = [(PUPhotoEditToolbar *)self buttonSpacing];
  v8 = [(NSArray *)self->_toolButtons count];
  v9 = v8;
  v10 = self->_stretchableView && self->_secondaryActionButton && self->_mainActionButton != 0;
  v11 = v8 <= 0 && !v10;
  if (v11 || self->_toolButtonsConstraints)
  {
    goto LABEL_101;
  }

  v152 = v7;
  v12 = [MEMORY[0x1E695DF70] arrayWithArray:self->_toolButtons];
  v13 = v12;
  v153 = v10;
  if (v10)
  {
    [v12 insertObject:self->_stretchableView atIndex:(v9 & 1) + v9 / 2];
  }

  v14 = [MEMORY[0x1E695DF70] array];
  if (v163 == 2)
  {
    v15 = [(NSArray *)self->_toolButtonLayoutGuides count];
    if (v15 != v9 + 1)
    {
      [MEMORY[0x1E696AAA8] currentHandler];
      v150 = v149 = v13;
      [v150 handleFailureInMethod:a2 object:self file:@"PUPhotoEditToolbar.m" lineNumber:462 description:{@"Spacing is distributed, but number of layout guides (%ld) is wrong for number of tool buttons (%ld)", v15, v9}];

      v13 = v149;
    }
  }

  else
  {
    v15 = 0;
  }

  if ([v13 count] != 1 && (mainActionButton = self->_mainActionButton) != 0 && self->_secondaryActionButton)
  {
    v155 = [(UIButton *)mainActionButton centerYAnchor];
    v157 = [(UIButton *)self->_secondaryActionButton centerYAnchor];
    v154 = [(UIButton *)self->_secondaryActionButton centerXAnchor];
    v17 = [(UIButton *)self->_mainActionButton centerXAnchor];
  }

  else
  {
    v155 = [(PUPhotoEditToolbar *)self topAnchor];
    v157 = [(PUPhotoEditToolbar *)self bottomAnchor];
    v154 = [(PUPhotoEditToolbar *)self leadingAnchor];
    v17 = [(PUPhotoEditToolbar *)self trailingAnchor];
  }

  v156 = v17;
  v159 = v6;
  v160 = self;
  if (v15)
  {
    v151 = v13;
    v18 = 0;
    v19 = 0;
    obj = (v15 - 1);
    v158 = v15;
    while (1)
    {
      v20 = v18;
      v18 = [(NSArray *)self->_toolButtonLayoutGuides objectAtIndexedSubscript:v19];
      v168 = v20;
      if (v167)
      {
        if (v19)
        {
          v21 = [(NSArray *)self->_toolButtons objectAtIndexedSubscript:v19 - 1];
          v22 = [v21 centerYAnchor];
        }

        else
        {
          v22 = v155;
        }

        if (v19 >= obj)
        {
          v26 = v157;
        }

        else
        {
          v25 = [(NSArray *)self->_toolButtons objectAtIndexedSubscript:v19];
          v26 = [v25 centerYAnchor];
        }

        v27 = self;
        v28 = [v18 topAnchor];
        v29 = v22;
        v30 = [v28 constraintEqualToAnchor:v22];
        [(NSArray *)v14 addObject:v30];

        v31 = [v18 bottomAnchor];
        v32 = v26;
        v33 = [v31 constraintEqualToAnchor:v26];
        [(NSArray *)v14 addObject:v33];

        v34 = [v18 widthAnchor];
        v35 = [v34 constraintEqualToConstant:0.0];
        [(NSArray *)v14 addObject:v35];

        v36 = [v18 centerXAnchor];
        v37 = [(PUPhotoEditToolbar *)v27 centerXAnchor];
        v38 = [v36 constraintEqualToAnchor:v37];
        [(NSArray *)v14 addObject:v38];

        v39 = v168;
        if (!v168)
        {
          goto LABEL_41;
        }

        v40 = [v18 heightAnchor];
        v41 = [v168 heightAnchor];
      }

      else
      {
        if (v19)
        {
          v23 = [(NSArray *)self->_toolButtons objectAtIndexedSubscript:v19 - 1];
          v24 = [v23 centerXAnchor];
        }

        else
        {
          v24 = v154;
        }

        if (v19 >= obj)
        {
          v43 = v156;
        }

        else
        {
          v42 = [(NSArray *)self->_toolButtons objectAtIndexedSubscript:v19];
          v43 = [v42 centerXAnchor];
        }

        v44 = self;
        v45 = [v18 leadingAnchor];
        v29 = v24;
        v46 = [v45 constraintEqualToAnchor:v24];
        [(NSArray *)v14 addObject:v46];

        v47 = [v18 trailingAnchor];
        v32 = v43;
        v48 = [v47 constraintEqualToAnchor:v43];
        [(NSArray *)v14 addObject:v48];

        v49 = [v18 heightAnchor];
        v50 = [v49 constraintEqualToConstant:0.0];
        [(NSArray *)v14 addObject:v50];

        v51 = [v18 centerYAnchor];
        v52 = [(PUPhotoEditToolbar *)v44 centerYAnchor];
        v53 = [v51 constraintEqualToAnchor:v52];
        [(NSArray *)v14 addObject:v53];

        v39 = v168;
        if (!v168)
        {
          goto LABEL_41;
        }

        v40 = [v18 widthAnchor];
        v41 = [v168 widthAnchor];
      }

      v54 = v41;
      v55 = [v40 constraintEqualToAnchor:v41];
      [(NSArray *)v14 addObject:v55];

LABEL_41:
      ++v19;
      self = v160;
      if (v158 == v19)
      {

        v6 = v159;
        v13 = v151;
        break;
      }
    }
  }

  v169 = v14;
  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  v56 = v13;
  v57 = [v56 countByEnumeratingWithState:&v170 objects:v174 count:16];
  v58 = 0x1E696A000uLL;
  obja = v56;
  if (!v57)
  {
    v60 = 0;
    goto LABEL_89;
  }

  v59 = v57;
  v60 = 0;
  v165 = *v171;
  do
  {
    for (i = 0; i != v59; ++i)
    {
      v62 = v60;
      if (*v171 != v165)
      {
        objc_enumerationMutation(obja);
      }

      v63 = *(*(&v170 + 1) + 8 * i);
      [(UIView *)v63 setTranslatesAutoresizingMaskIntoConstraints:0];
      if (v62)
      {
        v64 = _NSDictionaryOfVariableBindings(&cfstr_ItemPreviousit.isa, v63, v62, 0);
        stretchableView = self->_stretchableView;
        v67 = v63 == stretchableView || v62 == stretchableView;
        v68 = v163 != 2 || v67;
        if (!v167)
        {
          if (v68)
          {
            if (v67)
            {
              v77 = @"[previousItem]-stretchableViewItemSpacing-[item]";
            }

            else
            {
              v77 = @"[previousItem]-toolButtonSpacing-[item]";
            }

            v78 = [*(v58 + 3288) constraintsWithVisualFormat:v77 options:0 metrics:v6 views:v64];
            [(NSArray *)v169 addObjectsFromArray:v78];
          }

LABEL_74:
          v79 = self->_stretchableView;
          v80 = [(PUPhotoEditToolbar *)self useLargeShortSideHeight];
          v81 = *(v58 + 3288);
          if (v63 != v79)
          {
            if (v80)
            {
              v82 = @"V:[item]-tallItemMargin-|";
              v83 = 0x10000;
            }

            else
            {
              v82 = @"V:|[item]|";
              v83 = 0;
            }

            v88 = [v81 constraintsWithVisualFormat:v82 options:v83 metrics:v6 views:v64];
            [(NSArray *)v169 addObjectsFromArray:v88];

            v58 = 0x1E696A000uLL;
            v89 = [MEMORY[0x1E696ACD8] constraintWithItem:v63 attribute:7 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:49.0];
            [(NSArray *)v169 addObject:v89];

            goto LABEL_85;
          }

          if (v80)
          {
            v86 = @"V:[item]-barShortSideMargin-|";
          }

          else
          {
            v86 = @"V:|[item]|";
          }

          v87 = [v81 constraintsWithVisualFormat:v86 options:0 metrics:v6 views:v64];
          [(NSArray *)v169 addObjectsFromArray:v87];

          v84 = v63;
          v85 = 0;
LABEL_82:
          [(UIView *)v84 setContentHuggingPriority:v85 forAxis:0.0];
          goto LABEL_85;
        }

        if (v68)
        {
          if (v67)
          {
            v69 = @"V:[previousItem]-stretchableViewItemSpacing-[item]";
          }

          else
          {
            v69 = @"V:[previousItem]-toolButtonSpacing-[item]";
          }

          v70 = [*(v58 + 3288) constraintsWithVisualFormat:v69 options:0 metrics:v6 views:v64];
          [(NSArray *)v169 addObjectsFromArray:v70];

          v58 = 0x1E696A000;
        }
      }

      else
      {
        v64 = _NSDictionaryOfVariableBindings(&cfstr_Item.isa, v63, 0);
        if (!v167)
        {
          goto LABEL_74;
        }
      }

      if (v63 == self->_stretchableView)
      {
        v84 = v63;
        v85 = 1;
        goto LABEL_82;
      }

      if (![(PUPhotoEditToolbar *)self useLargeShortSideHeight])
      {
        v71 = [*(v58 + 3288) constraintsWithVisualFormat:@"[item]|" options:0x10000 metrics:v6 views:v64];
        [(NSArray *)v169 addObjectsFromArray:v71];

        v58 = 0x1E696A000uLL;
      }

      v72 = [*(v58 + 3288) constraintWithItem:v63 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:49.0];
      [(NSArray *)v169 addObject:v72];

      v73 = [(UIView *)v63 centerXAnchor];
      v74 = [(PUPhotoEditToolbar *)self mainToolbarContainer];
      v75 = [v74 centerXAnchor];
      v76 = [v73 constraintEqualToAnchor:v75];
      [(NSArray *)v169 addObject:v76];

      self = v160;
      v6 = v159;

      v58 = 0x1E696A000;
LABEL_85:
      v60 = v63;
    }

    v56 = obja;
    v59 = [obja countByEnumeratingWithState:&v170 objects:v174 count:16];
  }

  while (v59);
LABEL_89:

  if (v153)
  {
    v90 = [v56 firstObject];
    v91 = [v56 lastObject];
    v92 = *(v58 + 3288);
    v93 = v169;
    if (v167)
    {
      v94 = [v92 constraintWithItem:v90 attribute:3 relatedBy:0 toItem:v160->_mainActionButton attribute:4 multiplier:1.0 constant:15.0];
      [(NSArray *)v169 addObject:v94];

      v95 = *(v58 + 3288);
      secondaryActionButton = v160->_secondaryActionButton;
      v97 = 1.0;
      v98 = -10.0;
      v99 = v91;
      v100 = 4;
      v101 = 3;
    }

    else
    {
      v125 = [v92 constraintWithItem:v90 attribute:5 relatedBy:0 toItem:v160->_secondaryActionButton attribute:6 multiplier:1.0 constant:15.0];
      [(NSArray *)v169 addObject:v125];

      v95 = *(v58 + 3288);
      secondaryActionButton = v160->_mainActionButton;
      v97 = 1.0;
      v98 = -10.0;
      v99 = v91;
      v100 = 6;
      v101 = 5;
    }

    v104 = [v95 constraintWithItem:v99 attribute:v100 relatedBy:0 toItem:secondaryActionButton attribute:v101 multiplier:v97 constant:v98];
    [(NSArray *)v169 addObject:v104];
    goto LABEL_99;
  }

  v93 = v169;
  if (v152 == 1)
  {
    v102 = [(NSArray *)self->_toolButtons objectAtIndexedSubscript:0];
    [(NSArray *)self->_toolButtons objectAtIndexedSubscript:[(NSArray *)self->_toolButtons count]- 1];
    v91 = v103 = self;
    v104 = [(NSArray *)v103->_toolButtonLayoutGuides objectAtIndexedSubscript:0];
    v164 = [(NSArray *)v103->_toolButtonLayoutGuides objectAtIndexedSubscript:1];
    v166 = v102;
    if (v167)
    {
      v105 = [v104 topAnchor];
      v106 = [(PUPhotoEditToolbar *)v103 mainToolbarContainer];
      v107 = [v106 topAnchor];
      v108 = [v105 constraintEqualToAnchor:v107];
      [(NSArray *)v169 addObject:v108];

      v109 = [v104 bottomAnchor];
      v110 = [v102 topAnchor];
      v111 = [v109 constraintEqualToAnchor:v110];
      [(NSArray *)v169 addObject:v111];

      v112 = v164;
      v113 = [v164 topAnchor];
      v114 = [v91 bottomAnchor];
      v115 = [v113 constraintEqualToAnchor:v114];
      [(NSArray *)v169 addObject:v115];

      v116 = [v164 bottomAnchor];
      v117 = [(PUPhotoEditToolbar *)v103 mainToolbarContainer];
      v118 = [v117 bottomAnchor];
      v119 = [v116 constraintEqualToAnchor:v118];
      [(NSArray *)v169 addObject:v119];

      v120 = [v104 heightAnchor];
      v121 = [v164 heightAnchor];
      v122 = [v120 constraintEqualToAnchor:v121];
      [(NSArray *)v169 addObject:v122];

      v93 = v169;
      v123 = [v104 widthAnchor];
      v124 = [v123 constraintEqualToConstant:0.0];
      [(NSArray *)v169 addObject:v124];

      [v164 widthAnchor];
    }

    else
    {
      v126 = [v104 leadingAnchor];
      v127 = [(PUPhotoEditToolbar *)v103 mainToolbarContainer];
      v128 = [v127 leadingAnchor];
      v129 = [v126 constraintEqualToAnchor:v128];
      [(NSArray *)v169 addObject:v129];

      v130 = [v104 trailingAnchor];
      v131 = [v102 leadingAnchor];
      v132 = [v130 constraintEqualToAnchor:v131];
      [(NSArray *)v169 addObject:v132];

      v112 = v164;
      v133 = [v164 leadingAnchor];
      v134 = [v91 trailingAnchor];
      v135 = [v133 constraintEqualToAnchor:v134];
      [(NSArray *)v169 addObject:v135];

      v136 = [v164 trailingAnchor];
      v137 = [(PUPhotoEditToolbar *)v103 mainToolbarContainer];
      v138 = [v137 trailingAnchor];
      v139 = [v136 constraintEqualToAnchor:v138];
      [(NSArray *)v169 addObject:v139];

      v140 = [v104 widthAnchor];
      v141 = [v164 widthAnchor];
      v142 = [v140 constraintEqualToAnchor:v141];
      [(NSArray *)v169 addObject:v142];

      v93 = v169;
      v143 = [v104 heightAnchor];
      v144 = [v143 constraintEqualToConstant:0.0];
      [(NSArray *)v169 addObject:v144];

      [v164 heightAnchor];
    }
    v145 = ;
    v146 = [v145 constraintEqualToConstant:0.0];
    [(NSArray *)v93 addObject:v146];

    v58 = 0x1E696A000uLL;
    v90 = v166;
LABEL_99:

    v6 = v159;
    self = v160;
  }

  [*(v58 + 3288) activateConstraints:v93];
  toolButtonsConstraints = self->_toolButtonsConstraints;
  self->_toolButtonsConstraints = v93;
  v148 = v93;

LABEL_101:
}

- (void)_addTrailingConstraintsWithMetrics:(id)a3 verticalLayout:(BOOL)a4
{
  v6 = a3;
  secondaryActionButton = self->_secondaryActionButton;
  if (secondaryActionButton && !self->_secondaryActionButtonConstraints)
  {
    v31 = v6;
    [(UIButton *)secondaryActionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = [(UIButton *)self->_secondaryActionButton configuration];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    }

    v12 = v11;

    [v12 contentInsets];
    if (a4)
    {
      v17 = v13;
      longSideMargin = v14;
      v19 = v15;
      v20 = v16;
    }

    else
    {
      longSideMargin = self->_longSideMargin;
      v21 = [(UIButton *)self->_secondaryActionButton leadingAnchor];
      v22 = [(PUPhotoEditToolbar *)self leadingAnchor];
      v23 = [v21 constraintEqualToAnchor:v22 constant:self->_longSideMargin];
      [(NSArray *)v8 addObject:v23];

      v24 = [(PUPhotoEditToolbar *)self useLargeShortSideHeight];
      v25 = self->_secondaryActionButton;
      if (v24)
      {
        v26 = [(UIButton *)v25 bottomAnchor];
        v27 = [(PUPhotoEditToolbar *)self bottomAnchor];
        [v26 constraintEqualToAnchor:v27 constant:-5.0];
      }

      else
      {
        v26 = [(UIButton *)v25 centerYAnchor];
        v27 = [(PUPhotoEditToolbar *)self centerYAnchor];
        [v26 constraintEqualToAnchor:v27];
      }
      v28 = ;
      [(NSArray *)v8 addObject:v28];

      v20 = 0.0;
      v19 = 0.0;
      v17 = 0.0;
    }

    LODWORD(v13) = 1148846080;
    [(UIButton *)self->_secondaryActionButton setContentCompressionResistancePriority:0 forAxis:v13];
    [MEMORY[0x1E696ACD8] activateConstraints:v8];
    secondaryActionButtonConstraints = self->_secondaryActionButtonConstraints;
    self->_secondaryActionButtonConstraints = v8;
    v30 = v8;

    [v12 setContentInsets:{v17, longSideMargin, v19, v20}];
    [(UIButton *)self->_secondaryActionButton setConfiguration:v12];

    v6 = v31;
  }

  MEMORY[0x1EEE66BB8](secondaryActionButton, v6);
}

- (void)_addLeadingConstraintsWithMetrics:(id)a3 verticalLayout:(BOOL)a4
{
  v6 = a3;
  mainActionButton = self->_mainActionButton;
  if (mainActionButton && !self->_mainActionButtonConstraints)
  {
    v31 = v6;
    [(UIButton *)mainActionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = [(UIButton *)self->_mainActionButton configuration];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    }

    v12 = v11;

    [v12 contentInsets];
    v17 = v16;
    if (a4)
    {
      v18 = v13;
      v19 = v14;
      v20 = v15;
    }

    else
    {
      v21 = [(UIButton *)self->_mainActionButton trailingAnchor];
      v22 = [(PUPhotoEditToolbar *)self trailingAnchor];
      v23 = [v21 constraintEqualToAnchor:v22 constant:-self->_longSideMargin];
      [(NSArray *)v8 addObject:v23];

      v24 = [(PUPhotoEditToolbar *)self useLargeShortSideHeight];
      v25 = self->_mainActionButton;
      if (v24)
      {
        v26 = [(UIButton *)v25 bottomAnchor];
        v27 = [(PUPhotoEditToolbar *)self bottomAnchor];
        [v26 constraintEqualToAnchor:v27 constant:-5.0];
      }

      else
      {
        v26 = [(UIButton *)v25 centerYAnchor];
        v27 = [(PUPhotoEditToolbar *)self centerYAnchor];
        [v26 constraintEqualToAnchor:v27];
      }
      v28 = ;
      [(NSArray *)v8 addObject:v28];

      v20 = 0.0;
      v19 = 0.0;
      v18 = 0.0;
    }

    LODWORD(v13) = 1148846080;
    [(UIButton *)self->_mainActionButton setContentCompressionResistancePriority:0 forAxis:v13];
    [MEMORY[0x1E696ACD8] activateConstraints:v8];
    mainActionButtonConstraints = self->_mainActionButtonConstraints;
    self->_mainActionButtonConstraints = v8;
    v30 = v8;

    [v12 setContentInsets:{v18, v19, v20, v17}];
    [(UIButton *)self->_mainActionButton setConfiguration:v12];

    v6 = v31;
  }

  MEMORY[0x1EEE66BB8](mainActionButton, v6);
}

- (void)updateConstraints
{
  v34[11] = *MEMORY[0x1E69E9840];
  if (![(PUPhotoEditToolbar *)self layoutOrientation])
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PUPhotoEditToolbar.m" lineNumber:312 description:@"Layout orientation cannot be unknown."];
  }

  [(PUPhotoEditToolbar *)self contentPadding];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v33[0] = @"barShortSideSize";
  v12 = MEMORY[0x1E696AD98];
  [(PUPhotoEditToolbar *)self shortSideSize];
  v13 = [v12 numberWithDouble:?];
  v34[0] = v13;
  v34[1] = &unk_1F2B7F468;
  v33[1] = @"barShortSideMargin";
  v33[2] = @"tallItemMargin";
  v34[2] = &unk_1F2B7F478;
  v34[3] = &unk_1F2B7F488;
  v33[3] = @"tallActionButtonMargin";
  v33[4] = @"toolButtonSpacing";
  v34[4] = &unk_1F2B7F488;
  v34[5] = &unk_1F2B7F478;
  v33[5] = @"stretchableViewItemSpacing";
  v33[6] = @"highPriority";
  v34[6] = &unk_1F2B7F638;
  v33[7] = @"leftContentPadding";
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v34[7] = v14;
  v33[8] = @"rightContentPadding";
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  v34[8] = v15;
  v33[9] = @"topContentPadding";
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v34[9] = v16;
  v33[10] = @"bottomContentPadding";
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  v34[10] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:11];

  v19 = [(PUPhotoEditToolbar *)self layoutDirection];
  if (!self->_basicViewsConstraints)
  {
    v20 = [MEMORY[0x1E695DF70] array];
    v21 = [(PUPhotoEditToolbar *)self mainToolbarContainer];
    v22 = _NSDictionaryOfVariableBindings(&cfstr_SelfMaintoolba.isa, self, v21, self->_gradientBackgroundView, 0);
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (v19)
    {
      v23 = @"H:|-leftContentPadding-[mainToolbarContainer(barShortSideSize@highPriority)]-rightContentPadding-|";
    }

    else
    {
      v23 = @"H:|-leftContentPadding-[mainToolbarContainer]-rightContentPadding-|";
    }

    if (v19)
    {
      v24 = @"V:|-topContentPadding-[mainToolbarContainer]-bottomContentPadding-|";
    }

    else
    {
      v24 = @"V:|-topContentPadding-[mainToolbarContainer(barShortSideSize@highPriority)]-bottomContentPadding-|";
    }

    v25 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:v23 options:0x10000 metrics:v18 views:v22];
    [(NSArray *)v20 addObjectsFromArray:v25];

    v26 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:v24 options:0 metrics:v18 views:v22];
    [(NSArray *)v20 addObjectsFromArray:v26];

    [(UIView *)self->_gradientBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[_gradientBackgroundView]|" options:0 metrics:0 views:v22];
    [(NSArray *)v20 addObjectsFromArray:v27];

    v28 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[_gradientBackgroundView]|" options:0 metrics:0 views:v22];
    [(NSArray *)v20 addObjectsFromArray:v28];

    [MEMORY[0x1E696ACD8] activateConstraints:v20];
    basicViewsConstraints = self->_basicViewsConstraints;
    self->_basicViewsConstraints = v20;
  }

  v30 = v19 != 0;
  [(PUPhotoEditToolbar *)self _addLeadingConstraintsWithMetrics:v18 verticalLayout:v30];
  [(PUPhotoEditToolbar *)self _addTrailingConstraintsWithMetrics:v18 verticalLayout:v30];
  [(PUPhotoEditToolbar *)self _addCenterConstraintsWithMetrics:v18 verticalLayout:v30];
  v32.receiver = self;
  v32.super_class = PUPhotoEditToolbar;
  [(PUPhotoEditToolbar *)&v32 updateConstraints];
}

- (void)_invalidateAllConstraints
{
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_basicViewsConstraints];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_mainActionButtonConstraints];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_secondaryActionButtonConstraints];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_toolButtonsConstraints];
  basicViewsConstraints = self->_basicViewsConstraints;
  self->_basicViewsConstraints = 0;

  mainActionButtonConstraints = self->_mainActionButtonConstraints;
  self->_mainActionButtonConstraints = 0;

  secondaryActionButtonConstraints = self->_secondaryActionButtonConstraints;
  self->_secondaryActionButtonConstraints = 0;

  toolButtonsConstraints = self->_toolButtonsConstraints;
  self->_toolButtonsConstraints = 0;

  [(PUPhotoEditToolbar *)self setNeedsUpdateConstraints];
}

- (void)setContentPadding:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentPadding.top, v3), vceqq_f64(*&self->_contentPadding.bottom, v4)))) & 1) == 0)
  {
    self->_contentPadding = a3;
    [(PUPhotoEditToolbar *)self _invalidateAllConstraints];
  }
}

- (void)setUseiPhonePrimaryPortraitHeight:(BOOL)a3
{
  if (self->_useiPhonePrimaryPortraitHeight != a3)
  {
    self->_useiPhonePrimaryPortraitHeight = a3;
    [(PUPhotoEditToolbar *)self _invalidateAllConstraints];
  }
}

- (void)setUseLargeShortSideHeight:(BOOL)a3
{
  if (self->_useLargeShortSideHeight != a3)
  {
    self->_useLargeShortSideHeight = a3;
    [(PUPhotoEditToolbar *)self _invalidateAllConstraints];
  }
}

- (double)shortSideSize
{
  [(PUPhotoEditToolbar *)self tabBarHeight];
  v4 = v3;
  v5 = [(PUPhotoEditToolbar *)self useLargeShortSideHeight];
  result = 50.0;
  if (!v5)
  {
    return v4;
  }

  return result;
}

- (double)tabBarHeight
{
  v3 = 39.0;
  if ([(PUPhotoEditToolbar *)self layoutOrientation]!= 3 && [(PUPhotoEditToolbar *)self layoutOrientation]!= 2)
  {
    if (self->_useiPhonePrimaryPortraitHeight)
    {
      v3 = 50.0;
    }

    else
    {
      v3 = 35.0;
    }
  }

  [(PUPhotoEditToolbar *)self topActionButtonPadding];
  return v3 + v4;
}

- (void)setLongSideMargin:(double)a3
{
  if (self->_longSideMargin != a3)
  {
    self->_longSideMargin = a3;
    if (self->_mainActionButtonConstraints)
    {
      [(PUPhotoEditToolbar *)self removeConstraints:?];
      mainActionButtonConstraints = self->_mainActionButtonConstraints;
      self->_mainActionButtonConstraints = 0;

      [(PUPhotoEditToolbar *)self setNeedsUpdateConstraints];
    }

    if (self->_secondaryActionButtonConstraints)
    {
      [(PUPhotoEditToolbar *)self removeConstraints:?];
      secondaryActionButtonConstraints = self->_secondaryActionButtonConstraints;
      self->_secondaryActionButtonConstraints = 0;

      [(PUPhotoEditToolbar *)self setNeedsUpdateConstraints];
    }
  }
}

- (void)_setToolButtons:(id)a3 buttonSpacing:(int64_t)a4 mainActionButton:(id)a5 secondaryActionButton:(id)a6 stretchableView:(id)a7
{
  v77 = *MEMORY[0x1E69E9840];
  v12 = a3;
  obj = a5;
  v13 = a5;
  v61 = a6;
  v14 = a6;
  m = a7;
  if (([v12 isEqualToArray:self->_toolButtons] & 1) == 0 || self->_buttonSpacing != a4 || self->_mainActionButton != v13 || self->_secondaryActionButton != v14 || self->_stretchableView != m)
  {
    v55 = a7;
    v56 = a4;
    p_mainActionButton = &self->_mainActionButton;
    if ([(UIButton *)self->_mainActionButton isDescendantOfView:self])
    {
      [(UIButton *)*p_mainActionButton removeFromSuperview];
    }

    if ([(UIButton *)self->_secondaryActionButton isDescendantOfView:self])
    {
      [(UIButton *)self->_secondaryActionButton removeFromSuperview];
    }

    v58 = v14;
    v59 = v13;
    if ([(UIView *)self->_stretchableView isDescendantOfView:self])
    {
      [(UIView *)self->_stretchableView removeFromSuperview];
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v17 = self->_toolButtons;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v70 objects:v76 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v71;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v71 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v70 + 1) + 8 * i);
          if ([v22 isDescendantOfView:self])
          {
            [v22 removeFromSuperview];
          }
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v70 objects:v76 count:16];
      }

      while (v19);
    }

    v57 = m;

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v53 = 456;
    v23 = self->_toolButtonLayoutGuides;
    v24 = [(NSArray *)v23 countByEnumeratingWithState:&v66 objects:v75 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v67;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v67 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v66 + 1) + 8 * j);
          v29 = [v28 owningView];

          if (v29 == self)
          {
            [(PUPhotoEditToolbar *)self removeLayoutGuide:v28];
          }
        }

        v25 = [(NSArray *)v23 countByEnumeratingWithState:&v66 objects:v75 count:16];
      }

      while (v25);
    }

    objc_storeStrong(p_mainActionButton, obj);
    v30 = [(PUPhotoEditToolbar *)self mainToolbarContainer];
    [v30 addSubview:*p_mainActionButton];

    objc_storeStrong(&self->_secondaryActionButton, v61);
    v31 = [(PUPhotoEditToolbar *)self mainToolbarContainer];
    [v31 addSubview:self->_secondaryActionButton];

    objc_storeStrong(&self->_stretchableView, v55);
    v32 = [(PUPhotoEditToolbar *)self mainToolbarContainer];
    [v32 addSubview:self->_stretchableView];

    v33 = [v12 copy];
    toolButtons = self->_toolButtons;
    self->_toolButtons = v33;

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v35 = self->_toolButtons;
    v36 = [(NSArray *)v35 countByEnumeratingWithState:&v62 objects:v74 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v63;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v63 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v62 + 1) + 8 * k);
          v41 = [(PUPhotoEditToolbar *)self mainToolbarContainer];
          [v41 addSubview:v40];
        }

        v37 = [(NSArray *)v35 countByEnumeratingWithState:&v62 objects:v74 count:16];
      }

      while (v37);
    }

    self->_buttonSpacing = v56;
    v42 = [(NSArray *)self->_toolButtons count];
    if (v42)
    {
      buttonSpacing = self->_buttonSpacing;
      if (buttonSpacing == 2)
      {
        v44 = v42 + 1;
      }

      else
      {
        v44 = 0;
      }

      if (buttonSpacing == 1)
      {
        v45 = 2;
      }

      else
      {
        v45 = v44;
      }

      v46 = [MEMORY[0x1E695DF70] arrayWithCapacity:{v45, v53}];
      for (m = v57; v45; --v45)
      {
        v47 = objc_alloc_init(MEMORY[0x1E69DCC20]);
        [(PUPhotoEditToolbar *)self addLayoutGuide:v47];
        [v46 addObject:v47];
      }
    }

    else
    {
      v46 = 0;
      m = v57;
    }

    v48 = [v46 copy];
    v49 = *(&self->super.super.super.isa + v54);
    *(&self->super.super.super.isa + v54) = v48;

    mainActionButtonConstraints = self->_mainActionButtonConstraints;
    self->_mainActionButtonConstraints = 0;

    secondaryActionButtonConstraints = self->_secondaryActionButtonConstraints;
    self->_secondaryActionButtonConstraints = 0;

    toolButtonsConstraints = self->_toolButtonsConstraints;
    self->_toolButtonsConstraints = 0;

    [(PUPhotoEditToolbar *)self setNeedsUpdateConstraints];
    v14 = v58;
    v13 = v59;
  }
}

- (void)setToolButtons:(id)a3 mainActionButton:(id)a4 secondaryActionButton:(id)a5 stretchableView:(id)a6
{
  v15 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v13)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUPhotoEditToolbar.m" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"stretchableView != nil"}];
  }

  [(PUPhotoEditToolbar *)self _setToolButtons:v15 buttonSpacing:0 mainActionButton:v11 secondaryActionButton:v12 stretchableView:v13];
}

- (void)setupWithLayoutOrientation:(int64_t)a3
{
  if ([(PUPhotoEditToolbar *)self layoutOrientation]&& self->_layoutOrientation != a3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUPhotoEditToolbar.m" lineNumber:144 description:@"Can only set layout orientation once"];
  }

  self->_layoutOrientation = a3;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = PUPhotoEditToolbar;
  v5 = [(PUPhotoEditToolbar *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)setTransform:(CGAffineTransform *)a3
{
  mainToolbarContainer = self->_mainToolbarContainer;
  v4 = *&a3->c;
  v5[0] = *&a3->a;
  v5[1] = v4;
  v5[2] = *&a3->tx;
  [(UIView *)mainToolbarContainer setTransform:v5];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = PUPhotoEditToolbar;
  [(PUPhotoEditToolbar *)&v8 setBounds:?];
  [(CAGradientLayer *)self->_gradientLayer setBounds:x, y, width, height];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ((self->_layoutOrientation - 1) <= 2)
  {
    [(PUPhotoEditToolbar *)self shortSideSize];
  }

  v5 = width;
  v6 = height;
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(PUPhotoEditToolbar *)self bounds];

  [(PUPhotoEditToolbar *)self sizeThatFits:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (PUPhotoEditToolbar)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = PUPhotoEditToolbar;
  v3 = [(PUPhotoEditToolbar *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PUPhotoEditToolbar *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4->_useLargeShortSideHeight = 0;
    v4->_useiPhonePrimaryPortraitHeight = 0;
    v5 = [_PUPhotoEditToolbarPassThroughView alloc];
    v6 = [(_PUPhotoEditToolbarPassThroughView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    mainToolbarContainer = v4->_mainToolbarContainer;
    v4->_mainToolbarContainer = v6;

    [(PUPhotoEditToolbar *)v4 addSubview:v4->_mainToolbarContainer];
    v8 = objc_alloc_init(_PUPhotoEditToolbarPassThroughView);
    gradientBackgroundView = v4->_gradientBackgroundView;
    v4->_gradientBackgroundView = &v8->super;

    v10 = objc_alloc_init(MEMORY[0x1E6979380]);
    gradientLayer = v4->_gradientLayer;
    v4->_gradientLayer = v10;

    v12 = [(UIView *)v4->_gradientBackgroundView layer];
    [v12 addSublayer:v4->_gradientLayer];

    [(CAGradientLayer *)v4->_gradientLayer setAnchorPoint:0.0, 0.0];
    [(PUPhotoEditToolbar *)v4 insertSubview:v4->_gradientBackgroundView belowSubview:v4->_mainToolbarContainer];
    v13 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v4 action:sel_accessibilityLongPressChanged_];
    accessibilityLongPressGestureRecognizer = v4->_accessibilityLongPressGestureRecognizer;
    v4->_accessibilityLongPressGestureRecognizer = v13;

    [(UILongPressGestureRecognizer *)v4->_accessibilityLongPressGestureRecognizer setMinimumPressDuration:0.15];
    [(PUPhotoEditToolbar *)v4 addGestureRecognizer:v4->_accessibilityLongPressGestureRecognizer];
    v15 = [MEMORY[0x1E69DC668] sharedApplication];
    v16 = [v15 preferredContentSizeCategory];
    [(UILongPressGestureRecognizer *)v4->_accessibilityLongPressGestureRecognizer setEnabled:UIContentSizeCategoryIsAccessibilityCategory(v16)];
  }

  return v4;
}

@end