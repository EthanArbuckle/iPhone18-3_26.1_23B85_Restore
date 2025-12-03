@interface PUPhotoEditToolbar
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PUPhotoEditToolbar)initWithFrame:(CGRect)frame;
- (PUPhotoEditToolbarDelegate)delegate;
- (UIEdgeInsets)contentPadding;
- (double)shortSideSize;
- (double)tabBarHeight;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_addCenterConstraintsWithMetrics:(id)metrics verticalLayout:(BOOL)layout;
- (void)_addLeadingConstraintsWithMetrics:(id)metrics verticalLayout:(BOOL)layout;
- (void)_addTrailingConstraintsWithMetrics:(id)metrics verticalLayout:(BOOL)layout;
- (void)_invalidateAllConstraints;
- (void)_setToolButtons:(id)buttons buttonSpacing:(int64_t)spacing mainActionButton:(id)button secondaryActionButton:(id)actionButton stretchableView:(id)view;
- (void)accessibilityLongPressChanged:(id)changed;
- (void)setBounds:(CGRect)bounds;
- (void)setContentPadding:(UIEdgeInsets)padding;
- (void)setLongSideMargin:(double)margin;
- (void)setToolButtons:(id)buttons mainActionButton:(id)button secondaryActionButton:(id)actionButton stretchableView:(id)view;
- (void)setTransform:(CGAffineTransform *)transform;
- (void)setUseLargeShortSideHeight:(BOOL)height;
- (void)setUseiPhonePrimaryPortraitHeight:(BOOL)height;
- (void)setupWithLayoutOrientation:(int64_t)orientation;
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

- (void)accessibilityLongPressChanged:(id)changed
{
  changedCopy = changed;
  [changedCopy locationInView:self];
  v14 = [(PUPhotoEditToolbar *)self hitTest:0 withEvent:?];
  state = [changedCopy state];

  if ((state - 1) < 2)
  {
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        delegate3 = v14;
        delegate = [(PUPhotoEditToolbar *)self delegate];
        v9 = [delegate photoEditToolbar:self accessibilityHUDItemForButton:delegate3];

        delegate2 = [(PUPhotoEditToolbar *)self delegate];
        v11 = delegate2;
        if (v9)
        {
          [delegate2 photoEditToolbar:self showAccessibilityHUDForItem:v9];
        }

        else
        {
          [delegate2 dismissAccessibilityHUDForPhotoEditToolbar:self];
        }

        goto LABEL_13;
      }
    }

LABEL_10:
    delegate3 = [(PUPhotoEditToolbar *)self delegate];
    [delegate3 dismissAccessibilityHUDForPhotoEditToolbar:self];
LABEL_13:

    goto LABEL_14;
  }

  if (state != 3)
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
      delegate4 = [(PUPhotoEditToolbar *)self delegate];
      [delegate4 dismissAccessibilityHUDForPhotoEditToolbar:self];

      isKindOfClass = [v14 pu_sendActionForControlEventsWithHighlightTimeout:64];
LABEL_14:
      v12 = v14;
    }
  }

  MEMORY[0x1EEE66BB8](isKindOfClass, v12);
}

- (void)_addCenterConstraintsWithMetrics:(id)metrics verticalLayout:(BOOL)layout
{
  layoutCopy = layout;
  v175 = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  buttonSpacing = [(PUPhotoEditToolbar *)self buttonSpacing];
  buttonSpacing2 = [(PUPhotoEditToolbar *)self buttonSpacing];
  v8 = [(NSArray *)self->_toolButtons count];
  v9 = v8;
  v10 = self->_stretchableView && self->_secondaryActionButton && self->_mainActionButton != 0;
  v11 = v8 <= 0 && !v10;
  if (v11 || self->_toolButtonsConstraints)
  {
    goto LABEL_101;
  }

  v152 = buttonSpacing;
  v12 = [MEMORY[0x1E695DF70] arrayWithArray:self->_toolButtons];
  v13 = v12;
  v153 = v10;
  if (v10)
  {
    [v12 insertObject:self->_stretchableView atIndex:(v9 & 1) + v9 / 2];
  }

  array = [MEMORY[0x1E695DF70] array];
  if (buttonSpacing2 == 2)
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
    centerYAnchor = [(UIButton *)mainActionButton centerYAnchor];
    centerYAnchor2 = [(UIButton *)self->_secondaryActionButton centerYAnchor];
    centerXAnchor = [(UIButton *)self->_secondaryActionButton centerXAnchor];
    centerXAnchor2 = [(UIButton *)self->_mainActionButton centerXAnchor];
  }

  else
  {
    centerYAnchor = [(PUPhotoEditToolbar *)self topAnchor];
    centerYAnchor2 = [(PUPhotoEditToolbar *)self bottomAnchor];
    centerXAnchor = [(PUPhotoEditToolbar *)self leadingAnchor];
    centerXAnchor2 = [(PUPhotoEditToolbar *)self trailingAnchor];
  }

  v156 = centerXAnchor2;
  v159 = metricsCopy;
  selfCopy = self;
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
      if (layoutCopy)
      {
        if (v19)
        {
          v21 = [(NSArray *)self->_toolButtons objectAtIndexedSubscript:v19 - 1];
          centerYAnchor3 = [v21 centerYAnchor];
        }

        else
        {
          centerYAnchor3 = centerYAnchor;
        }

        if (v19 >= obj)
        {
          centerYAnchor4 = centerYAnchor2;
        }

        else
        {
          v25 = [(NSArray *)self->_toolButtons objectAtIndexedSubscript:v19];
          centerYAnchor4 = [v25 centerYAnchor];
        }

        selfCopy2 = self;
        topAnchor = [v18 topAnchor];
        v29 = centerYAnchor3;
        v30 = [topAnchor constraintEqualToAnchor:centerYAnchor3];
        [(NSArray *)array addObject:v30];

        bottomAnchor = [v18 bottomAnchor];
        v32 = centerYAnchor4;
        v33 = [bottomAnchor constraintEqualToAnchor:centerYAnchor4];
        [(NSArray *)array addObject:v33];

        widthAnchor = [v18 widthAnchor];
        v35 = [widthAnchor constraintEqualToConstant:0.0];
        [(NSArray *)array addObject:v35];

        centerXAnchor3 = [v18 centerXAnchor];
        centerXAnchor4 = [(PUPhotoEditToolbar *)selfCopy2 centerXAnchor];
        v38 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
        [(NSArray *)array addObject:v38];

        v39 = v168;
        if (!v168)
        {
          goto LABEL_41;
        }

        heightAnchor = [v18 heightAnchor];
        heightAnchor2 = [v168 heightAnchor];
      }

      else
      {
        if (v19)
        {
          v23 = [(NSArray *)self->_toolButtons objectAtIndexedSubscript:v19 - 1];
          centerXAnchor5 = [v23 centerXAnchor];
        }

        else
        {
          centerXAnchor5 = centerXAnchor;
        }

        if (v19 >= obj)
        {
          centerXAnchor6 = v156;
        }

        else
        {
          v42 = [(NSArray *)self->_toolButtons objectAtIndexedSubscript:v19];
          centerXAnchor6 = [v42 centerXAnchor];
        }

        selfCopy3 = self;
        leadingAnchor = [v18 leadingAnchor];
        v29 = centerXAnchor5;
        v46 = [leadingAnchor constraintEqualToAnchor:centerXAnchor5];
        [(NSArray *)array addObject:v46];

        trailingAnchor = [v18 trailingAnchor];
        v32 = centerXAnchor6;
        v48 = [trailingAnchor constraintEqualToAnchor:centerXAnchor6];
        [(NSArray *)array addObject:v48];

        heightAnchor3 = [v18 heightAnchor];
        v50 = [heightAnchor3 constraintEqualToConstant:0.0];
        [(NSArray *)array addObject:v50];

        centerYAnchor5 = [v18 centerYAnchor];
        centerYAnchor6 = [(PUPhotoEditToolbar *)selfCopy3 centerYAnchor];
        v53 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
        [(NSArray *)array addObject:v53];

        v39 = v168;
        if (!v168)
        {
          goto LABEL_41;
        }

        heightAnchor = [v18 widthAnchor];
        heightAnchor2 = [v168 widthAnchor];
      }

      v54 = heightAnchor2;
      v55 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
      [(NSArray *)array addObject:v55];

LABEL_41:
      ++v19;
      self = selfCopy;
      if (v158 == v19)
      {

        metricsCopy = v159;
        v13 = v151;
        break;
      }
    }
  }

  v169 = array;
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
        v68 = buttonSpacing2 != 2 || v67;
        if (!layoutCopy)
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

            v78 = [*(v58 + 3288) constraintsWithVisualFormat:v77 options:0 metrics:metricsCopy views:v64];
            [(NSArray *)v169 addObjectsFromArray:v78];
          }

LABEL_74:
          v79 = self->_stretchableView;
          useLargeShortSideHeight = [(PUPhotoEditToolbar *)self useLargeShortSideHeight];
          v81 = *(v58 + 3288);
          if (v63 != v79)
          {
            if (useLargeShortSideHeight)
            {
              v82 = @"V:[item]-tallItemMargin-|";
              v83 = 0x10000;
            }

            else
            {
              v82 = @"V:|[item]|";
              v83 = 0;
            }

            v88 = [v81 constraintsWithVisualFormat:v82 options:v83 metrics:metricsCopy views:v64];
            [(NSArray *)v169 addObjectsFromArray:v88];

            v58 = 0x1E696A000uLL;
            v89 = [MEMORY[0x1E696ACD8] constraintWithItem:v63 attribute:7 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:49.0];
            [(NSArray *)v169 addObject:v89];

            goto LABEL_85;
          }

          if (useLargeShortSideHeight)
          {
            v86 = @"V:[item]-barShortSideMargin-|";
          }

          else
          {
            v86 = @"V:|[item]|";
          }

          v87 = [v81 constraintsWithVisualFormat:v86 options:0 metrics:metricsCopy views:v64];
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

          v70 = [*(v58 + 3288) constraintsWithVisualFormat:v69 options:0 metrics:metricsCopy views:v64];
          [(NSArray *)v169 addObjectsFromArray:v70];

          v58 = 0x1E696A000;
        }
      }

      else
      {
        v64 = _NSDictionaryOfVariableBindings(&cfstr_Item.isa, v63, 0);
        if (!layoutCopy)
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
        v71 = [*(v58 + 3288) constraintsWithVisualFormat:@"[item]|" options:0x10000 metrics:metricsCopy views:v64];
        [(NSArray *)v169 addObjectsFromArray:v71];

        v58 = 0x1E696A000uLL;
      }

      v72 = [*(v58 + 3288) constraintWithItem:v63 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:49.0];
      [(NSArray *)v169 addObject:v72];

      centerXAnchor7 = [(UIView *)v63 centerXAnchor];
      mainToolbarContainer = [(PUPhotoEditToolbar *)self mainToolbarContainer];
      centerXAnchor8 = [mainToolbarContainer centerXAnchor];
      v76 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
      [(NSArray *)v169 addObject:v76];

      self = selfCopy;
      metricsCopy = v159;

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
    firstObject = [v56 firstObject];
    lastObject = [v56 lastObject];
    v92 = *(v58 + 3288);
    v93 = v169;
    if (layoutCopy)
    {
      v94 = [v92 constraintWithItem:firstObject attribute:3 relatedBy:0 toItem:selfCopy->_mainActionButton attribute:4 multiplier:1.0 constant:15.0];
      [(NSArray *)v169 addObject:v94];

      v95 = *(v58 + 3288);
      secondaryActionButton = selfCopy->_secondaryActionButton;
      v97 = 1.0;
      v98 = -10.0;
      v99 = lastObject;
      v100 = 4;
      v101 = 3;
    }

    else
    {
      v125 = [v92 constraintWithItem:firstObject attribute:5 relatedBy:0 toItem:selfCopy->_secondaryActionButton attribute:6 multiplier:1.0 constant:15.0];
      [(NSArray *)v169 addObject:v125];

      v95 = *(v58 + 3288);
      secondaryActionButton = selfCopy->_mainActionButton;
      v97 = 1.0;
      v98 = -10.0;
      v99 = lastObject;
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
    lastObject = v103 = self;
    v104 = [(NSArray *)v103->_toolButtonLayoutGuides objectAtIndexedSubscript:0];
    v164 = [(NSArray *)v103->_toolButtonLayoutGuides objectAtIndexedSubscript:1];
    v166 = v102;
    if (layoutCopy)
    {
      topAnchor2 = [v104 topAnchor];
      mainToolbarContainer2 = [(PUPhotoEditToolbar *)v103 mainToolbarContainer];
      topAnchor3 = [mainToolbarContainer2 topAnchor];
      v108 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
      [(NSArray *)v169 addObject:v108];

      bottomAnchor2 = [v104 bottomAnchor];
      topAnchor4 = [v102 topAnchor];
      v111 = [bottomAnchor2 constraintEqualToAnchor:topAnchor4];
      [(NSArray *)v169 addObject:v111];

      v112 = v164;
      topAnchor5 = [v164 topAnchor];
      bottomAnchor3 = [lastObject bottomAnchor];
      v115 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3];
      [(NSArray *)v169 addObject:v115];

      bottomAnchor4 = [v164 bottomAnchor];
      mainToolbarContainer3 = [(PUPhotoEditToolbar *)v103 mainToolbarContainer];
      bottomAnchor5 = [mainToolbarContainer3 bottomAnchor];
      v119 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
      [(NSArray *)v169 addObject:v119];

      heightAnchor4 = [v104 heightAnchor];
      heightAnchor5 = [v164 heightAnchor];
      v122 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
      [(NSArray *)v169 addObject:v122];

      v93 = v169;
      widthAnchor2 = [v104 widthAnchor];
      v124 = [widthAnchor2 constraintEqualToConstant:0.0];
      [(NSArray *)v169 addObject:v124];

      [v164 widthAnchor];
    }

    else
    {
      leadingAnchor2 = [v104 leadingAnchor];
      mainToolbarContainer4 = [(PUPhotoEditToolbar *)v103 mainToolbarContainer];
      leadingAnchor3 = [mainToolbarContainer4 leadingAnchor];
      v129 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
      [(NSArray *)v169 addObject:v129];

      trailingAnchor2 = [v104 trailingAnchor];
      leadingAnchor4 = [v102 leadingAnchor];
      v132 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor4];
      [(NSArray *)v169 addObject:v132];

      v112 = v164;
      leadingAnchor5 = [v164 leadingAnchor];
      trailingAnchor3 = [lastObject trailingAnchor];
      v135 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3];
      [(NSArray *)v169 addObject:v135];

      trailingAnchor4 = [v164 trailingAnchor];
      mainToolbarContainer5 = [(PUPhotoEditToolbar *)v103 mainToolbarContainer];
      trailingAnchor5 = [mainToolbarContainer5 trailingAnchor];
      v139 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
      [(NSArray *)v169 addObject:v139];

      widthAnchor3 = [v104 widthAnchor];
      widthAnchor4 = [v164 widthAnchor];
      v142 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
      [(NSArray *)v169 addObject:v142];

      v93 = v169;
      heightAnchor6 = [v104 heightAnchor];
      v144 = [heightAnchor6 constraintEqualToConstant:0.0];
      [(NSArray *)v169 addObject:v144];

      [v164 heightAnchor];
    }
    v145 = ;
    v146 = [v145 constraintEqualToConstant:0.0];
    [(NSArray *)v93 addObject:v146];

    v58 = 0x1E696A000uLL;
    firstObject = v166;
LABEL_99:

    metricsCopy = v159;
    self = selfCopy;
  }

  [*(v58 + 3288) activateConstraints:v93];
  toolButtonsConstraints = self->_toolButtonsConstraints;
  self->_toolButtonsConstraints = v93;
  v148 = v93;

LABEL_101:
}

- (void)_addTrailingConstraintsWithMetrics:(id)metrics verticalLayout:(BOOL)layout
{
  metricsCopy = metrics;
  secondaryActionButton = self->_secondaryActionButton;
  if (secondaryActionButton && !self->_secondaryActionButtonConstraints)
  {
    v31 = metricsCopy;
    [(UIButton *)secondaryActionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    array = [MEMORY[0x1E695DF70] array];
    configuration = [(UIButton *)self->_secondaryActionButton configuration];
    v10 = configuration;
    if (configuration)
    {
      plainButtonConfiguration = configuration;
    }

    else
    {
      plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    }

    v12 = plainButtonConfiguration;

    [v12 contentInsets];
    if (layout)
    {
      v17 = v13;
      longSideMargin = v14;
      v19 = v15;
      v20 = v16;
    }

    else
    {
      longSideMargin = self->_longSideMargin;
      leadingAnchor = [(UIButton *)self->_secondaryActionButton leadingAnchor];
      leadingAnchor2 = [(PUPhotoEditToolbar *)self leadingAnchor];
      v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:self->_longSideMargin];
      [(NSArray *)array addObject:v23];

      useLargeShortSideHeight = [(PUPhotoEditToolbar *)self useLargeShortSideHeight];
      v25 = self->_secondaryActionButton;
      if (useLargeShortSideHeight)
      {
        bottomAnchor = [(UIButton *)v25 bottomAnchor];
        bottomAnchor2 = [(PUPhotoEditToolbar *)self bottomAnchor];
        [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
      }

      else
      {
        bottomAnchor = [(UIButton *)v25 centerYAnchor];
        bottomAnchor2 = [(PUPhotoEditToolbar *)self centerYAnchor];
        [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      }
      v28 = ;
      [(NSArray *)array addObject:v28];

      v20 = 0.0;
      v19 = 0.0;
      v17 = 0.0;
    }

    LODWORD(v13) = 1148846080;
    [(UIButton *)self->_secondaryActionButton setContentCompressionResistancePriority:0 forAxis:v13];
    [MEMORY[0x1E696ACD8] activateConstraints:array];
    secondaryActionButtonConstraints = self->_secondaryActionButtonConstraints;
    self->_secondaryActionButtonConstraints = array;
    v30 = array;

    [v12 setContentInsets:{v17, longSideMargin, v19, v20}];
    [(UIButton *)self->_secondaryActionButton setConfiguration:v12];

    metricsCopy = v31;
  }

  MEMORY[0x1EEE66BB8](secondaryActionButton, metricsCopy);
}

- (void)_addLeadingConstraintsWithMetrics:(id)metrics verticalLayout:(BOOL)layout
{
  metricsCopy = metrics;
  mainActionButton = self->_mainActionButton;
  if (mainActionButton && !self->_mainActionButtonConstraints)
  {
    v31 = metricsCopy;
    [(UIButton *)mainActionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    array = [MEMORY[0x1E695DF70] array];
    configuration = [(UIButton *)self->_mainActionButton configuration];
    v10 = configuration;
    if (configuration)
    {
      plainButtonConfiguration = configuration;
    }

    else
    {
      plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    }

    v12 = plainButtonConfiguration;

    [v12 contentInsets];
    v17 = v16;
    if (layout)
    {
      v18 = v13;
      v19 = v14;
      v20 = v15;
    }

    else
    {
      trailingAnchor = [(UIButton *)self->_mainActionButton trailingAnchor];
      trailingAnchor2 = [(PUPhotoEditToolbar *)self trailingAnchor];
      v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-self->_longSideMargin];
      [(NSArray *)array addObject:v23];

      useLargeShortSideHeight = [(PUPhotoEditToolbar *)self useLargeShortSideHeight];
      v25 = self->_mainActionButton;
      if (useLargeShortSideHeight)
      {
        bottomAnchor = [(UIButton *)v25 bottomAnchor];
        bottomAnchor2 = [(PUPhotoEditToolbar *)self bottomAnchor];
        [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
      }

      else
      {
        bottomAnchor = [(UIButton *)v25 centerYAnchor];
        bottomAnchor2 = [(PUPhotoEditToolbar *)self centerYAnchor];
        [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      }
      v28 = ;
      [(NSArray *)array addObject:v28];

      v20 = 0.0;
      v19 = 0.0;
      v18 = 0.0;
    }

    LODWORD(v13) = 1148846080;
    [(UIButton *)self->_mainActionButton setContentCompressionResistancePriority:0 forAxis:v13];
    [MEMORY[0x1E696ACD8] activateConstraints:array];
    mainActionButtonConstraints = self->_mainActionButtonConstraints;
    self->_mainActionButtonConstraints = array;
    v30 = array;

    [v12 setContentInsets:{v18, v19, v20, v17}];
    [(UIButton *)self->_mainActionButton setConfiguration:v12];

    metricsCopy = v31;
  }

  MEMORY[0x1EEE66BB8](mainActionButton, metricsCopy);
}

- (void)updateConstraints
{
  v34[11] = *MEMORY[0x1E69E9840];
  if (![(PUPhotoEditToolbar *)self layoutOrientation])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditToolbar.m" lineNumber:312 description:@"Layout orientation cannot be unknown."];
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

  layoutDirection = [(PUPhotoEditToolbar *)self layoutDirection];
  if (!self->_basicViewsConstraints)
  {
    array = [MEMORY[0x1E695DF70] array];
    mainToolbarContainer = [(PUPhotoEditToolbar *)self mainToolbarContainer];
    v22 = _NSDictionaryOfVariableBindings(&cfstr_SelfMaintoolba.isa, self, mainToolbarContainer, self->_gradientBackgroundView, 0);
    [mainToolbarContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    if (layoutDirection)
    {
      v23 = @"H:|-leftContentPadding-[mainToolbarContainer(barShortSideSize@highPriority)]-rightContentPadding-|";
    }

    else
    {
      v23 = @"H:|-leftContentPadding-[mainToolbarContainer]-rightContentPadding-|";
    }

    if (layoutDirection)
    {
      v24 = @"V:|-topContentPadding-[mainToolbarContainer]-bottomContentPadding-|";
    }

    else
    {
      v24 = @"V:|-topContentPadding-[mainToolbarContainer(barShortSideSize@highPriority)]-bottomContentPadding-|";
    }

    v25 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:v23 options:0x10000 metrics:v18 views:v22];
    [(NSArray *)array addObjectsFromArray:v25];

    v26 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:v24 options:0 metrics:v18 views:v22];
    [(NSArray *)array addObjectsFromArray:v26];

    [(UIView *)self->_gradientBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[_gradientBackgroundView]|" options:0 metrics:0 views:v22];
    [(NSArray *)array addObjectsFromArray:v27];

    v28 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[_gradientBackgroundView]|" options:0 metrics:0 views:v22];
    [(NSArray *)array addObjectsFromArray:v28];

    [MEMORY[0x1E696ACD8] activateConstraints:array];
    basicViewsConstraints = self->_basicViewsConstraints;
    self->_basicViewsConstraints = array;
  }

  v30 = layoutDirection != 0;
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

- (void)setContentPadding:(UIEdgeInsets)padding
{
  v3.f64[0] = padding.top;
  v3.f64[1] = padding.left;
  v4.f64[0] = padding.bottom;
  v4.f64[1] = padding.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentPadding.top, v3), vceqq_f64(*&self->_contentPadding.bottom, v4)))) & 1) == 0)
  {
    self->_contentPadding = padding;
    [(PUPhotoEditToolbar *)self _invalidateAllConstraints];
  }
}

- (void)setUseiPhonePrimaryPortraitHeight:(BOOL)height
{
  if (self->_useiPhonePrimaryPortraitHeight != height)
  {
    self->_useiPhonePrimaryPortraitHeight = height;
    [(PUPhotoEditToolbar *)self _invalidateAllConstraints];
  }
}

- (void)setUseLargeShortSideHeight:(BOOL)height
{
  if (self->_useLargeShortSideHeight != height)
  {
    self->_useLargeShortSideHeight = height;
    [(PUPhotoEditToolbar *)self _invalidateAllConstraints];
  }
}

- (double)shortSideSize
{
  [(PUPhotoEditToolbar *)self tabBarHeight];
  v4 = v3;
  useLargeShortSideHeight = [(PUPhotoEditToolbar *)self useLargeShortSideHeight];
  result = 50.0;
  if (!useLargeShortSideHeight)
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

- (void)setLongSideMargin:(double)margin
{
  if (self->_longSideMargin != margin)
  {
    self->_longSideMargin = margin;
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

- (void)_setToolButtons:(id)buttons buttonSpacing:(int64_t)spacing mainActionButton:(id)button secondaryActionButton:(id)actionButton stretchableView:(id)view
{
  v77 = *MEMORY[0x1E69E9840];
  buttonsCopy = buttons;
  obj = button;
  buttonCopy = button;
  actionButtonCopy = actionButton;
  actionButtonCopy2 = actionButton;
  m = view;
  if (([buttonsCopy isEqualToArray:self->_toolButtons] & 1) == 0 || self->_buttonSpacing != spacing || self->_mainActionButton != buttonCopy || self->_secondaryActionButton != actionButtonCopy2 || self->_stretchableView != m)
  {
    viewCopy = view;
    spacingCopy = spacing;
    p_mainActionButton = &self->_mainActionButton;
    if ([(UIButton *)self->_mainActionButton isDescendantOfView:self])
    {
      [(UIButton *)*p_mainActionButton removeFromSuperview];
    }

    if ([(UIButton *)self->_secondaryActionButton isDescendantOfView:self])
    {
      [(UIButton *)self->_secondaryActionButton removeFromSuperview];
    }

    v58 = actionButtonCopy2;
    v59 = buttonCopy;
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
          owningView = [v28 owningView];

          if (owningView == self)
          {
            [(PUPhotoEditToolbar *)self removeLayoutGuide:v28];
          }
        }

        v25 = [(NSArray *)v23 countByEnumeratingWithState:&v66 objects:v75 count:16];
      }

      while (v25);
    }

    objc_storeStrong(p_mainActionButton, obj);
    mainToolbarContainer = [(PUPhotoEditToolbar *)self mainToolbarContainer];
    [mainToolbarContainer addSubview:*p_mainActionButton];

    objc_storeStrong(&self->_secondaryActionButton, actionButtonCopy);
    mainToolbarContainer2 = [(PUPhotoEditToolbar *)self mainToolbarContainer];
    [mainToolbarContainer2 addSubview:self->_secondaryActionButton];

    objc_storeStrong(&self->_stretchableView, viewCopy);
    mainToolbarContainer3 = [(PUPhotoEditToolbar *)self mainToolbarContainer];
    [mainToolbarContainer3 addSubview:self->_stretchableView];

    v33 = [buttonsCopy copy];
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
          mainToolbarContainer4 = [(PUPhotoEditToolbar *)self mainToolbarContainer];
          [mainToolbarContainer4 addSubview:v40];
        }

        v37 = [(NSArray *)v35 countByEnumeratingWithState:&v62 objects:v74 count:16];
      }

      while (v37);
    }

    self->_buttonSpacing = spacingCopy;
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
    actionButtonCopy2 = v58;
    buttonCopy = v59;
  }
}

- (void)setToolButtons:(id)buttons mainActionButton:(id)button secondaryActionButton:(id)actionButton stretchableView:(id)view
{
  buttonsCopy = buttons;
  buttonCopy = button;
  actionButtonCopy = actionButton;
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditToolbar.m" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"stretchableView != nil"}];
  }

  [(PUPhotoEditToolbar *)self _setToolButtons:buttonsCopy buttonSpacing:0 mainActionButton:buttonCopy secondaryActionButton:actionButtonCopy stretchableView:viewCopy];
}

- (void)setupWithLayoutOrientation:(int64_t)orientation
{
  if ([(PUPhotoEditToolbar *)self layoutOrientation]&& self->_layoutOrientation != orientation)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditToolbar.m" lineNumber:144 description:@"Can only set layout orientation once"];
  }

  self->_layoutOrientation = orientation;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = PUPhotoEditToolbar;
  v5 = [(PUPhotoEditToolbar *)&v9 hitTest:event withEvent:test.x, test.y];
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

- (void)setTransform:(CGAffineTransform *)transform
{
  mainToolbarContainer = self->_mainToolbarContainer;
  v4 = *&transform->c;
  v5[0] = *&transform->a;
  v5[1] = v4;
  v5[2] = *&transform->tx;
  [(UIView *)mainToolbarContainer setTransform:v5];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8.receiver = self;
  v8.super_class = PUPhotoEditToolbar;
  [(PUPhotoEditToolbar *)&v8 setBounds:?];
  [(CAGradientLayer *)self->_gradientLayer setBounds:x, y, width, height];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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

- (PUPhotoEditToolbar)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = PUPhotoEditToolbar;
  v3 = [(PUPhotoEditToolbar *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    layer = [(UIView *)v4->_gradientBackgroundView layer];
    [layer addSublayer:v4->_gradientLayer];

    [(CAGradientLayer *)v4->_gradientLayer setAnchorPoint:0.0, 0.0];
    [(PUPhotoEditToolbar *)v4 insertSubview:v4->_gradientBackgroundView belowSubview:v4->_mainToolbarContainer];
    v13 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v4 action:sel_accessibilityLongPressChanged_];
    accessibilityLongPressGestureRecognizer = v4->_accessibilityLongPressGestureRecognizer;
    v4->_accessibilityLongPressGestureRecognizer = v13;

    [(UILongPressGestureRecognizer *)v4->_accessibilityLongPressGestureRecognizer setMinimumPressDuration:0.15];
    [(PUPhotoEditToolbar *)v4 addGestureRecognizer:v4->_accessibilityLongPressGestureRecognizer];
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
    [(UILongPressGestureRecognizer *)v4->_accessibilityLongPressGestureRecognizer setEnabled:UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory)];
  }

  return v4;
}

@end