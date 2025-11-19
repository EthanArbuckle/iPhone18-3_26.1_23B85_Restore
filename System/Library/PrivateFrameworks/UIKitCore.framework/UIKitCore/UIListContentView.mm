@interface UIListContentView
- (BOOL)_needsDoubleUpdateConstraintsPass;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)becomeFirstResponder;
- (BOOL)supportsConfiguration:(id)a3;
- (CGRect)_primaryTextLayoutFrame;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (NSLayoutRect)_primaryTextLayoutRect;
- (NSString)description;
- (UILayoutGuide)imageLayoutGuide;
- (UILayoutGuide)secondaryTextLayoutGuide;
- (UILayoutGuide)textLayoutGuide;
- (UIListContentConfiguration)configuration;
- (UIListContentView)initWithCoder:(NSCoder *)coder;
- (UIListContentView)initWithConfiguration:(UIListContentConfiguration *)configuration;
- (double)_intrinsicSizeForLabel:(BOOL *)a3 inAvailableSpace:(double)a4 outRequiresMultipleLines:(double)a5;
- (double)_preferredMaxLayoutWidth;
- (id)_imageView;
- (id)_secondaryTextLabel;
- (id)_textLabel;
- (int64_t)_listCellProminence;
- (int64_t)_listCellStyle;
- (void)_applyConfiguration:(id *)a1;
- (void)_computeLayoutInfoForAvailableSpace:(double)a3;
- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)a3;
- (void)_prepareForFirstIntrinsicContentSizeCalculation;
- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)a3;
- (void)_registerForTextLegibilityTraitChangesOnLabelOrImageView:(uint64_t)a1;
- (void)_setFrame:(int)a3 forView:(double)a4 isOldFrameInvalid:(double)a5;
- (void)_textLegibilityOrContentSizeTraitsChanged;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setConfiguration:(UIListContentConfiguration *)configuration;
@end

@implementation UIListContentView

- (BOOL)_needsDoubleUpdateConstraintsPass
{
  if ((*(&self->super._viewFlags + 6) & 0x10) == 0)
  {
    return 0;
  }

  v4 = [(UIListContentView *)&self->super.super.super.isa _textLabel];
  if (v4)
  {
    v5 = v4;
    v6 = [(UIListContentView *)&self->super.super.super.isa _secondaryTextLabel];
    if (v6)
    {
      v7 = v6;
      v8 = [(UIListContentConfiguration *)self->_configuration prefersSideBySideTextAndSecondaryText];

      if (v8)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  v9 = [(UIListContentView *)&self->super.super.super.isa _textLabel];
  if (!v9 || (v10 = v9, -[UIListContentView _textLabel](&self->super.super.super.isa), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 numberOfLines], v11, v10, v12 == 1))
  {
    v13 = [(UIListContentView *)&self->super.super.super.isa _secondaryTextLabel];
    if (!v13)
    {
      return 0;
    }

    v14 = v13;
    v15 = [(UIListContentView *)&self->super.super.super.isa _secondaryTextLabel];
    v16 = [v15 numberOfLines];

    if (v16 == 1)
    {
      return 0;
    }
  }

  return 1;
}

- (id)_imageView
{
  if (a1)
  {
    v2 = a1;
    if ([a1[57] isHidden])
    {
      v3 = 0;
    }

    else
    {
      v3 = v2[57];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (id)_textLabel
{
  if (a1)
  {
    v2 = a1;
    if ([a1[58] isHidden])
    {
      v3 = 0;
    }

    else
    {
      v3 = v2[58];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (UIListContentConfiguration)configuration
{
  animatingToConfiguration = self->_animatingToConfiguration;
  if (!animatingToConfiguration)
  {
    animatingToConfiguration = self->_configuration;
  }

  v3 = [(UIListContentConfiguration *)animatingToConfiguration copy];

  return v3;
}

- (id)_secondaryTextLabel
{
  if (a1)
  {
    v2 = a1;
    if ([a1[59] isHidden])
    {
      v3 = 0;
    }

    else
    {
      v3 = v2[59];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)layoutSubviews
{
  v175.receiver = self;
  v175.super_class = UIListContentView;
  [(UIView *)&v175 layoutSubviews];
  [(UIListContentView *)self _primaryTextLayoutFrame];
  v4 = v3;
  v149 = v6;
  v150 = v5;
  rect1 = v7;
  [(UIView *)self _currentScreenScale];
  v9 = v8;
  [(UIView *)self bounds];
  v11 = v10;
  v157 = v12;
  v14 = v13;
  v16 = v15;
  [(UIView *)self directionalLayoutMargins];
  v18 = v17;
  v20 = v19;
  v22 = v16 - v17 - v21;
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v143 = v23;
  v169 = 0u;
  v170 = 0u;
  memset(v168, 0, sizeof(v168));
  [(UIListContentView *)v168 _computeLayoutInfoForAvailableSpace:v14 - v19 - v23, v22];
  v24 = [(UIListContentView *)&self->super.super.super.isa _imageView];
  v25 = *&v168[0];
  v155 = v18;
  v156 = v4;
  v146 = v14;
  v147 = v11;
  v145 = v16;
  if (!v24 || *&v168[0] == 2)
  {
    v40 = 2;
    v160 = v11;
    v161 = v157;
  }

  else
  {
    v26 = *(&v169 + 1);
    v162 = v11;
    v163 = v157;
    v164 = v14;
    v165 = v16;
    v166 = 2;
    v167 = v20 + *(&v169 + 1);
    v27 = [(UIView *)self _applyDirectionalRelativePosition:0.0 toRect:0.0, *(v168 + 1)];
    v31 = UIRectCenteredYInRectScale(v27, v28, v29, v30, 0.0, v155, 0.0, v22, v9);
    v35 = UIRectIntegralWithScale(v31, v32, v33, v34, v9);
    v14 = v36;
    v16 = v37;
    v160 = v35;
    v161 = v38;
    [(UIListContentView *)self _setFrame:v24 forView:*&self->_contentViewFlags & 1 isOldFrameInvalid:v35, v38, v36, v37];
    [(UIListContentConfiguration *)self->_configuration imageToTextPadding];
    v20 = v26 + v39;
    v18 = v155;
    v40 = 8;
  }

  v176.origin.x = UIRectCenteredYInRectScale(0.0, 0.0, *(&v172 + 1), *&v173, 0.0, v18, 0.0, v22, v9);
  x = v176.origin.x;
  width = v176.size.width;
  height = v176.size.height;
  rect = v176.origin.y;
  MinY = CGRectGetMinY(v176);
  v45 = [(UIListContentView *)&self->super.super.super.isa _textLabel];
  v46 = [(UIListContentView *)&self->super.super.super.isa _secondaryTextLabel];
  if (!v45)
  {
    v70 = MinY;
    v71 = v156;
    goto LABEL_24;
  }

  v154 = MinY;
  v158 = v14;
  v47 = v170;
  if ((v170 & 1) == 0)
  {
    [v45 _firstBaselineOffsetFromTop];
    v48 = v16;
    v50 = v49;
    [v46 _firstBaselineOffsetFromTop];
    v52 = v50 < v51;
    v16 = v48;
    if (v52)
    {
      [v46 _firstBaselineOffsetFromTop];
      v54 = v53;
      [v45 _firstBaselineOffsetFromTop];
      v56 = v54 - v55;
      v16 = v48;
      v154 = MinY + v56;
    }
  }

  v162 = v160;
  v163 = v161;
  v164 = v158;
  v165 = v16;
  v141 = v16;
  v166 = v40;
  v152 = v20;
  v167 = v20;
  v57 = [(UIView *)self _applyDirectionalRelativePosition:0.0 toRect:v154, *(&v170 + 1)];
  v151 = v9;
  v61 = UIRectIntegralWithScale(v57, v58, v59, v60, v9);
  v63 = v62;
  v65 = v64;
  v67 = v66;
  [(UIListContentView *)self _setFrame:v45 forView:(*&self->_contentViewFlags >> 1) & 1 isOldFrameInvalid:v61, v62, v64, v66];
  if (!v47)
  {
    v178.origin.x = x;
    v178.origin.y = rect;
    v178.size.width = width;
    v178.size.height = height;
    v70 = CGRectGetMinY(v178);
    [v45 _firstBaselineOffsetFromTop];
    v99 = v98;
    [v46 _firstBaselineOffsetFromTop];
    if (v99 > v100)
    {
      [v45 _firstBaselineOffsetFromTop];
      v102 = v101;
      [v46 _firstBaselineOffsetFromTop];
      v70 = v70 + v102 - v103;
    }

    v16 = v145;
    v40 = 8;
    v20 = -v143 - *(&v171 + 1);
    v71 = v156;
    v14 = v146;
    v160 = v147;
    v161 = v157;
    v9 = v151;
    if (v25)
    {
      goto LABEL_12;
    }

LABEL_18:
    MinY = v154;
    goto LABEL_24;
  }

  v177.origin.x = v61;
  v177.origin.y = v63;
  v177.size.width = v65;
  v177.size.height = v67;
  MaxY = CGRectGetMaxY(v177);
  [(UIListContentConfiguration *)self->_configuration textToSecondaryTextVerticalPadding];
  v70 = MaxY + v69;
  v71 = v156;
  v9 = v151;
  v20 = v152;
  v16 = v141;
  v14 = v158;
  if (!v25)
  {
    goto LABEL_18;
  }

LABEL_12:
  v144 = v70;
  v159 = v14;
  v72 = v16;
  v153 = v20;
  [v24 frame];
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  LineOfLabel = _UIContentViewRectForVerticalCenteringWithFirstLineOfLabel(v45);
  v85 = v84;
  v86 = v81;
  if (v25 == 2)
  {
    v87 = v82;
    [(UIView *)self bringSubviewToFront:v24];
    v162 = v160;
    v163 = v161;
    v164 = v159;
    v165 = v72;
    v16 = v72;
    v166 = v40;
    v20 = v153;
    v167 = v153;
    v88 = [(UIView *)self _applyDirectionalRelativePosition:0.0 toRect:0.0, *(v168 + 1)];
    v9 = v151;
    v93 = UIRectCenteredYInRectScale(v88, v89, v90, v91, LineOfLabel, v85, v86, v87, v151);
    v95 = v94;
    v97 = v96;
  }

  else
  {
    v104 = v76;
    v9 = v151;
    v93 = UIRectCenteredYInRectScale(v74, v104, v78, v80, LineOfLabel, v85, v81, v82, v151);
    v106 = v105;
    v95 = v107;
    v97 = v108;
    v179.size.width = v146;
    v179.origin.x = v147;
    v179.origin.y = v157;
    v179.size.height = v145;
    v109 = v155 * 0.5 + CGRectGetMinY(v179);
    if (v106 >= v109)
    {
      v92 = v106;
    }

    else
    {
      v92 = v109;
    }

    v20 = v153;
    v16 = v72;
  }

  v110 = UIRectIntegralWithScale(v93, v92, v95, v97, v9);
  [(UIListContentView *)self _setFrame:v24 forView:*&self->_contentViewFlags & 1 isOldFrameInvalid:v110, v111, v112, v113];
  v71 = v156;
  v14 = v159;
  MinY = v154;
  v70 = v144;
LABEL_24:
  if (v24)
  {
    v114 = [(UIListContentConfiguration *)self->_configuration imageProperties];
    [v114 cornerRadius];
    _UIApplyCornerRadiusToView(v24, v115);
  }

  if (v46)
  {
    v162 = v160;
    v163 = v161;
    v164 = v14;
    v165 = v16;
    v166 = v40;
    v167 = v20;
    v116 = [(UIView *)self _applyDirectionalRelativePosition:0.0 toRect:v70, *(&v171 + 1)];
    v120 = UIRectIntegralWithScale(v116, v117, v118, v119, v9);
    [(UIListContentView *)self _setFrame:v46 forView:(*&self->_contentViewFlags >> 2) & 1 isOldFrameInvalid:v120, v121, v122, v123];
  }

  v124 = [(_UIContentViewEditingController *)self->_editingController textInputView];

  if (v124)
  {
    v162 = v160;
    v163 = v161;
    v164 = v14;
    v165 = v16;
    v166 = v40;
    v167 = v20 + *(&v174 + 1);
    v125 = [(UIView *)self _applyDirectionalRelativePosition:0.0 toRect:MinY, *(&v173 + 1)];
    v129 = UIRectIntegralWithScale(v125, v126, v127, v128, v9);
    v131 = v130;
    v133 = v132;
    v135 = v134;
    v136 = [(_UIContentViewEditingController *)self->_editingController textInputView];
    [v136 setFrame:{v129, v131, v133, v135}];
  }

  *&self->_contentViewFlags &= ~1u;
  *&self->_contentViewFlags &= ~2u;
  *&self->_contentViewFlags &= ~4u;
  if (self->_primaryTextFrameDidChangeHandler)
  {
    [(UIListContentView *)self _primaryTextLayoutFrame];
    v181.origin.x = v137;
    v181.origin.y = v138;
    v181.size.width = v139;
    v181.size.height = v140;
    v180.origin.x = v71;
    v180.size.width = v149;
    v180.origin.y = v150;
    v180.size.height = rect1;
    if (!CGRectEqualToRect(v180, v181))
    {
      (*(self->_primaryTextFrameDidChangeHandler + 2))();
    }
  }
}

- (CGRect)_primaryTextLayoutFrame
{
  v2 = [(UIListContentView *)&self->super.super.super.isa _textLabel];
  v3 = v2;
  if (v2)
  {
    [v2 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = *MEMORY[0x1E695F050];
    v7 = *(MEMORY[0x1E695F050] + 8);
    v9 = *(MEMORY[0x1E695F050] + 16);
    v11 = *(MEMORY[0x1E695F050] + 24);
  }

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (UILayoutGuide)imageLayoutGuide
{
  v25[4] = *MEMORY[0x1E69E9840];
  if (!self->_imageLayoutGuide)
  {
    v3 = [(UIListContentView *)&self->super.super.super.isa _imageView];

    if (v3)
    {
      v4 = objc_alloc_init(UILayoutGuide);
      imageLayoutGuide = self->_imageLayoutGuide;
      self->_imageLayoutGuide = v4;

      [(UIView *)self addLayoutGuide:self->_imageLayoutGuide];
      [(UILayoutGuide *)self->_imageLayoutGuide setIdentifier:@"UIListContentViewImageLayoutGuide"];
      [(UILayoutGuide *)self->_imageLayoutGuide _setLockedToOwningView:1];
      v6 = [(UILayoutGuide *)self->_imageLayoutGuide leadingAnchor];
      v7 = [(UIListContentView *)&self->super.super.super.isa _imageView];
      v8 = [v7 leadingAnchor];
      v9 = [v6 constraintEqualToAnchor:v8];

      [v9 setIdentifier:@"UIListContentView-leading-imageLayoutGuide-constraint"];
      v10 = [(UILayoutGuide *)self->_imageLayoutGuide trailingAnchor];
      v11 = [(UIListContentView *)&self->super.super.super.isa _imageView];
      v12 = [v11 trailingAnchor];
      v13 = [v10 constraintEqualToAnchor:v12];

      [v9 setIdentifier:@"UIListContentView-trailing-imageLayoutGuide-constraint"];
      v14 = [(UILayoutGuide *)self->_imageLayoutGuide topAnchor];
      v15 = [(UIListContentView *)&self->super.super.super.isa _imageView];
      v16 = [v15 topAnchor];
      v17 = [v14 constraintEqualToAnchor:v16];

      [v9 setIdentifier:@"UIListContentView-top-imageLayoutGuide-constraint"];
      v18 = [(UILayoutGuide *)self->_imageLayoutGuide bottomAnchor];
      v19 = [(UIListContentView *)&self->super.super.super.isa _imageView];
      v20 = [v19 bottomAnchor];
      v21 = [v18 constraintEqualToAnchor:v20];

      [v9 setIdentifier:@"UIListContentView-bottom-imageLayoutGuide-constraint"];
      v25[0] = v9;
      v25[1] = v13;
      v25[2] = v17;
      v25[3] = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
      [(UILayoutGuide *)self->_imageLayoutGuide _setSystemConstraints:v22];
      [MEMORY[0x1E69977A0] activateConstraints:v22];
    }
  }

  v23 = self->_imageLayoutGuide;

  return v23;
}

- (UIListContentView)initWithConfiguration:(UIListContentConfiguration *)configuration
{
  v5 = configuration;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"UIListContentConfiguration.m" lineNumber:1446 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  v13.receiver = self;
  v13.super_class = UIListContentView;
  v6 = [(UIView *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__UIListContentView_initWithConfiguration___block_invoke;
    v10[3] = &unk_1E70F35B8;
    v11 = v6;
    v12 = v5;
    [UIView performWithoutAnimation:v10];
  }

  return v7;
}

- (UIListContentView)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v5 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
  if (!v5)
  {

    goto LABEL_5;
  }

  v12.receiver = self;
  v12.super_class = UIListContentView;
  v6 = [(UIView *)&v12 initWithCoder:v4];
  if (!v6)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__UIListContentView_initWithCoder___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v7 = v6;
  v10 = v7;
  v11 = v5;
  [UIView performWithoutAnimation:v9];

LABEL_6:
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIListContentView;
  v4 = a3;
  [(UIView *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_configuration forKey:{@"configuration", v5.receiver, v5.super_class}];
}

- (NSString)description
{
  v12.receiver = self;
  v12.super_class = UIListContentView;
  v3 = [(UIView *)&v12 description];
  v4 = [v3 mutableCopy];

  if ([v4 length])
  {
    [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];
    configuration = self->_configuration;
    if (configuration)
    {
      v6 = [(UIListContentConfiguration *)configuration _descriptionPropertiesForFullDescription:?];
      v7 = MEMORY[0x1E696AEC0];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v6 componentsJoinedByString:@" "];;
      configuration = [v7 stringWithFormat:@"<%@: %p %@>", v9, configuration, v10];;
    }

    [v4 appendFormat:@"; configuration = %@>", configuration];
  }

  return v4;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4.receiver = self;
  v4.super_class = UIListContentView;
  return [(UIView *)&v4 _shouldAnimatePropertyWithKey:a3];
}

- (BOOL)supportsConfiguration:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)setConfiguration:(UIListContentConfiguration *)configuration
{
  v5 = configuration;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"UIListContentConfiguration.m" lineNumber:1510 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  animatingToConfiguration = self->_animatingToConfiguration;
  if (![(UIListContentConfiguration *)self->_configuration _isEqualToConfigurationQuick:v5]|| animatingToConfiguration && ([(UIListContentConfiguration *)self->_animatingToConfiguration _isEqualToConfigurationQuick:v5]& 1) == 0)
  {
    v7 = [(UIListContentConfiguration *)v5 copy];
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      objc_storeStrong(&self->_animatingToConfiguration, v7);
      if (!animatingToConfiguration)
      {
        objc_storeStrong(&self->_animatingFromConfiguration, self->_configuration);
        objc_initWeak(&location, self);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __38__UIListContentView_setConfiguration___block_invoke;
        v15[3] = &unk_1E70F5DE0;
        objc_copyWeak(&v16, &location);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __38__UIListContentView_setConfiguration___block_invoke_2;
        v13[3] = &unk_1E70F5A28;
        objc_copyWeak(&v14, &location);
        v8 = [_UIContentViewAnimationStateUpdatingLayer layerForView:self withUpdateHandler:v15 completionHandler:v13];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __38__UIListContentView_setConfiguration___block_invoke_3;
        v11[3] = &unk_1E70F6AF8;
        v9 = v8;
        v12 = v9;
        [UIView _addCompletionWithPosition:v11];

        objc_destroyWeak(&v14);
        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      if (animatingToConfiguration)
      {
        objc_storeStrong(&self->_animatingFromConfiguration, v7);
        objc_storeStrong(&self->_animatingToConfiguration, v7);
      }

      [(UIListContentView *)&self->super.super.super.isa _applyConfiguration:v7];
    }
  }
}

void __38__UIListContentView_setConfiguration___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = 2;
    if (!a2)
    {
      v4 = 1;
    }

    v5 = *(WeakRetained + OBJC_IVAR___UIListContentView__configuration[v4]);
    if (WeakRetained[56] != v5)
    {
      v6 = WeakRetained;
      [(UIListContentView *)WeakRetained _applyConfiguration:v5];
      WeakRetained = v6;
    }
  }
}

void __38__UIListContentView_setConfiguration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[52];
    WeakRetained[52] = 0;
    v4 = WeakRetained;

    v3 = v4[51];
    v4[51] = 0;

    WeakRetained = v4;
  }
}

- (void)_applyConfiguration:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v36 = v4;
    if (!v4)
    {
      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      [v35 handleFailureInMethod:sel__applyConfiguration_ object:a1 file:@"UIListContentConfiguration.m" lineNumber:1562 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
    }

    objc_storeStrong(a1 + 56, a2);
    v5 = [v36 axesPreservingSuperviewLayoutMargins];
    if ((v5 & 2) != 0)
    {
      v6 = (v5 << 63 >> 63) & 0xA | 5;
    }

    else
    {
      v6 = (v5 << 63 >> 63) & 0xA;
    }

    [a1 setEdgesPreservingSuperviewLayoutMargins:v6];
    [v36 directionalLayoutMargins];
    [a1 setDirectionalLayoutMargins:?];
    [v36 alpha];
    [a1 setAlpha:?];
    v7 = [v36 imageProperties];
    v8 = a1;
    v9 = a1[57];
    v10 = v9;
    if (v7 && v7[2])
    {
      if (v9)
      {
        if ([(UIView *)v9 isHidden])
        {
          [(UIImageView *)v10 setHidden:0];
          v11 = 2;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v10 = objc_alloc_init(_UIListContentImageView);
        v12 = a1[57];
        a1[57] = v10;

        [v8 addSubview:v10];
        v11 = 1;
      }

      [(UIListContentImageProperties *)v7 _applyToImageView:v10];
    }

    else if (v9 && ![(UIView *)v9 isHidden])
    {
      [(UIImageView *)v10 setHidden:1];
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    v13 = [v36 textProperties];
    v14 = _UIUpdateLabelUsingTextConfiguration(v8, v8 + 58, v13);

    v15 = [v36 secondaryTextProperties];
    v16 = _UIUpdateLabelUsingTextConfiguration(v8, v8 + 59, v15);

    if (v11)
    {
      v17 = [(UIListContentView *)v8 _imageView];

      if (v17)
      {
        *(v8 + 440) |= 1u;
      }

      v18 = v8[63];
      if (v18)
      {
        [v18 _setLockedToOwningView:0];
        [v8 removeLayoutGuide:v8[63]];
        v19 = v8[63];
        v8[63] = 0;
      }

      if (v11 == 1)
      {
        [(UIListContentView *)v8 _registerForTextLegibilityTraitChangesOnLabelOrImageView:?];
      }
    }

    if (v14)
    {
      v20 = [(UIListContentView *)v8 _textLabel];

      if (v20)
      {
        *(v8 + 440) |= 2u;
      }

      v21 = v8[61];
      if (v21)
      {
        [v21 _setLockedToOwningView:0];
        [v8 removeLayoutGuide:v8[61]];
        v22 = v8[61];
        v8[61] = 0;
      }

      if (v14 == 1)
      {
        [(UIListContentView *)v8 _registerForTextLegibilityTraitChangesOnLabelOrImageView:?];
      }
    }

    if (v16)
    {
      v23 = [(UIListContentView *)v8 _secondaryTextLabel];

      if (v23)
      {
        *(v8 + 440) |= 4u;
      }

      v24 = v8[62];
      if (v24)
      {
        [v24 _setLockedToOwningView:0];
        [v8 removeLayoutGuide:v8[62]];
        v25 = v8[62];
        v8[62] = 0;
      }

      if (v16 == 1)
      {
        [(UIListContentView *)v8 _registerForTextLegibilityTraitChangesOnLabelOrImageView:?];
      }
    }

    if (v8[58])
    {
      v26 = [v36 _textEditingConfiguration];
      if (v26)
      {
        v27 = v8[54];

        if (!v27)
        {
          v28 = [[_UIContentViewEditingController alloc] initWithContentView:v8 editableLabel:v8[58]];
          v29 = v8[54];
          v8[54] = v28;
        }
      }
    }

    v30 = v8[54];
    if (v30)
    {
      v31 = [v36 textProperties];
      v32 = [v36 _textEditingConfiguration];
      [v30 updateLabelProperties:v31 editingConfiguration:v32];

      v33 = [v36 _textEditingConfiguration];

      if (!v33)
      {
        v34 = v8[54];
        v8[54] = 0;
      }
    }

    [v8 setNeedsUpdateProperties];
    v8[53] = 0x7FEFFFFFFFFFFFFFLL;
    [v8 invalidateIntrinsicContentSize];
    [v8 setNeedsLayout];
    v4 = v36;
  }
}

- (void)_registerForTextLegibilityTraitChangesOnLabelOrImageView:(uint64_t)a1
{
  v6[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6[0] = 0x1EFE324A0;
  v6[1] = 0x1EFE32440;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v5 = [v3 _registerForTraitTokenChanges:v4 withTarget:a1 action:sel__textLegibilityOrContentSizeTraitsChanged];
}

- (void)_textLegibilityOrContentSizeTraitsChanged
{
  [(UIView *)self invalidateIntrinsicContentSize];

  [(UIView *)self setNeedsLayout];
}

- (void)_prepareForFirstIntrinsicContentSizeCalculation
{
  self->_preferredMaxLayoutWidth = 1.79769313e308;
  v2.receiver = self;
  v2.super_class = UIListContentView;
  [(UIView *)&v2 _prepareForFirstIntrinsicContentSizeCalculation];
}

- (void)_prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self alignmentRectForFrame:?];
  self->_preferredMaxLayoutWidth = v8;
  v9.receiver = self;
  v9.super_class = UIListContentView;
  [(UIView *)&v9 _prepareForSecondIntrinsicContentSizeCalculationWithLayoutEngineBounds:x, y, width, height];
}

- (double)_preferredMaxLayoutWidth
{
  result = 0.0;
  if ((*(&self->super._viewFlags + 6) & 2) == 0)
  {
    return self->_preferredMaxLayoutWidth;
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (a3.width <= 0.0)
  {
    a3.width = 1.79769313e308;
  }

  if (a3.height <= 0.0)
  {
    a3.height = 1.79769313e308;
  }

  [(UIListContentView *)self _intrinsicSizeWithinSize:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = 1.79769313e308;
  if (a3.width <= 0.0)
  {
    a3.width = 1.79769313e308;
  }

  if (height > 0.0)
  {
    v9 = height;
  }

  [(UIListContentView *)self _intrinsicSizeWithinSize:a3.width, v9];
  if (a4 >= 1000.0)
  {
    v10 = width;
  }

  if (a5 >= 1000.0)
  {
    v11 = height;
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (double)_intrinsicSizeForLabel:(BOOL *)a3 inAvailableSpace:(double)a4 outRequiresMultipleLines:(double)a5
{
  v9 = a2;
  v10 = [v9 numberOfLines];
  [v9 bounds];
  if (a3)
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __86__UIListContentView__intrinsicSizeForLabel_inAvailableSpace_outRequiresMultipleLines___block_invoke;
    v36[3] = &unk_1E70F38C0;
    v38 = v10;
    v15 = v11;
    v16 = v12;
    v17 = v13;
    v26 = v14;
    v18 = v9;
    v37 = v18;
    v39 = a4;
    v40 = a5;
    [UIView performWithoutAnimation:v36];

    [v18 _intrinsicSizeWithinSize:{a4, a5}];
    v20 = v19;
    *a3 = [v18 _measuredNumberOfLines] > 1;
    v21 = +[UIView _isInAnimationBlockWithAnimationsEnabled];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __86__UIListContentView__intrinsicSizeForLabel_inAvailableSpace_outRequiresMultipleLines___block_invoke_2;
    v27[3] = &unk_1E7103308;
    v22 = v18;
    v29 = a1;
    v30 = v10;
    v35 = v21;
    v28 = v22;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v34 = v26;
    [UIView performWithoutAnimation:v27];
    if (v10 == 1)
    {
      [v22 _intrinsicSizeWithinSize:{a4, a5}];
      v20 = v23;
    }
  }

  else
  {
    [v9 _intrinsicSizeWithinSize:{a4, a5}];
    v20 = v24;
  }

  return v20;
}

uint64_t __86__UIListContentView__intrinsicSizeForLabel_inAvailableSpace_outRequiresMultipleLines___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) setNumberOfLines:2];
  }

  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setBounds:{0.0, 0.0, v2, 99999.0}];
}

void __86__UIListContentView__intrinsicSizeForLabel_inAvailableSpace_outRequiresMultipleLines___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNumberOfLines:*(a1 + 48)];
  if ((*(a1 + 88) & 1) != 0 || ([*(a1 + 40) _isInLayoutSubviews] & 1) == 0 && (objc_msgSend(*(a1 + 40), "layer"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "needsLayout"), v10, (v11 & 1) == 0))
  {
    [*(a1 + 40) bounds];
    if (v3 != *MEMORY[0x1E695F060] || v2 != *(MEMORY[0x1E695F060] + 8))
    {
      v5 = *(a1 + 56);
      v6 = *(a1 + 64);
      v7 = *(a1 + 72);
      v8 = *(a1 + 80);
      v9 = *(a1 + 32);

      [v9 setBounds:{v5, v6, v7, v8}];
    }
  }
}

- (void)_computeLayoutInfoForAvailableSpace:(double)a3
{
  if (!a2)
  {
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  v7 = MEMORY[0x1E695F060];
  v8 = *MEMORY[0x1E695F060];
  *(a1 + 8) = *MEMORY[0x1E695F060];
  *(a1 + 24) = v8;
  *(a1 + 56) = v8;
  *(a1 + 72) = v8;
  *(a1 + 88) = v8;
  v79 = v8;
  *(a1 + 104) = v8;
  *(a1 + 120) = 0;
  v9 = [a2 traitCollection];
  v10 = [(UIListContentView *)a2 _imageView];
  v11 = &OBJC_IVAR____UITabContainerView__alongsideAnimator;
  v12 = [a2[56] imageProperties];
  [v12 maximumSize];
  *v84.i64 = v13;
  *&v84.i64[1] = v14;

  v15 = 0;
  if (_UIContentViewShouldUseAccessibilityLargeTextLayout(v9))
  {
    v16 = [a2[56] textProperties];
    ShouldUseAccessibilityTextWrappingLayout = _UIContentViewShouldUseAccessibilityTextWrappingLayout(v16, v10, &v84);

    if (ShouldUseAccessibilityTextWrappingLayout)
    {
      v15 = 2;
      *a1 = 2;
      if (!v10)
      {
        v81 = *(a1 + 8);
        goto LABEL_26;
      }

      v18 = 1;
      goto LABEL_9;
    }

    v15 = 1;
    *a1 = 1;
  }

  if (!v10)
  {
LABEL_24:
    v41 = 0.0;
    goto LABEL_27;
  }

  v18 = 0;
LABEL_9:
  [v10 _intrinsicSizeWithinSize:{a3, a4}];
  v78 = v19;
  v80 = v20;
  v21 = [v10 image];
  v22 = [a2[56] imageProperties];
  [v22 reservedLayoutSize];
  v24 = _UIContentViewImageViewLayoutHeight(v21, v9, v80, v23, *&v84.i64[1]);
  *(a1 + 32) = v24;

  [a2 directionalLayoutMargins];
  v27 = a4 + v25 + v26;
  v28.f64[0] = a3;
  if (v24 >= v80)
  {
    v27 = a4;
  }

  v28.f64[1] = v27;
  v29.f64[0] = v78;
  v29.f64[1] = v80;
  v30 = vmaxnmq_f64(v79, vminnmq_f64(v29, vbslq_s8(vcgtzq_f64(v84), vbslq_s8(vcgtq_f64(v84, v28), v28, v84), v28)));
  v31 = v78 != v30.f64[0];
  if (v80 != v30.f64[1])
  {
    v31 = 1;
  }

  if (v78 > 0.0 && v31 && v80 > 0.0)
  {
    v30.f64[0] = v30.f64[0] / v78;
    v32 = v30.f64[1] / v80;
    if (v30.f64[0] < v30.f64[1] / v80)
    {
      v32 = v30.f64[0];
    }

    v30 = vmulq_n_f64(v29, v32);
  }

  *(a1 + 8) = v30;
  v81 = v30.f64[0];
  if (!v18)
  {
    v33 = [v10 image];
    v34 = [a2[56] imageProperties];
    [v34 reservedLayoutSize];
    v36 = a2[56];
    if (v36)
    {
      v37 = HIBYTE(v36[4]) & 1;
    }

    else
    {
      v37 = 0;
    }

    v38 = _UIContentViewImageViewHorizontalCenteringOffset(v33, v9, v37, v81, v35);
    *(a1 + 40) = v38;

    v39 = v81 + v38 + v38;
    *(a1 + 24) = v39;
    [a2[56] imageToTextPadding];
    a3 = a3 - (v39 + v40);
    goto LABEL_24;
  }

  *(a1 + 40) = 0;
LABEL_26:
  [a2[56] imageToTextPadding];
  v41 = v81 + v42;
  v15 = 2;
LABEL_27:
  *(a1 + 120) = v41;
  v43 = [(UIListContentView *)a2 _textLabel];
  v44 = [a2[56] textProperties];
  _UIContentViewUpdateLabelAttributesForAccessibilityLayout(v43, v44, v15, v41);

  v45 = [(UIListContentView *)a2 _secondaryTextLabel];
  v46 = [a2[56] secondaryTextProperties];
  _UIContentViewUpdateLabelAttributesForAccessibilityLayout(v45, v46, v15, 0.0);

  if (v43)
  {
    *(a1 + 48) = 1;
    v47 = [a2[56] prefersSideBySideTextAndSecondaryText];
    if (v15 || !v47)
    {
      v55 = [(UIListContentView *)a2 _intrinsicSizeForLabel:v43 inAvailableSpace:0 outRequiresMultipleLines:a3, a4];
      v49 = *v7;
      v50 = v7[1];
      v51 = fmax(*v7, fmin(v55, a3));
      v53 = fmax(v50, fmin(v56, a4));
      v54 = 1;
    }

    else
    {
      v83 = 0;
      v48 = [(UIListContentView *)a2 _intrinsicSizeForLabel:v43 inAvailableSpace:&v83 outRequiresMultipleLines:a3, a4];
      v49 = *v7;
      v50 = v7[1];
      v51 = fmax(*v7, fmin(v48, a3));
      v53 = fmax(v50, fmin(v52, a4));
      v54 = v83;
      *(a1 + 48) = v83;
    }

    *(a1 + 56) = v51;
    *(a1 + 64) = v53;
    v57 = [a2[56] textProperties];
    if ([v57 alignment])
    {

      if (v45 != 0 && !v54)
      {
        *(a1 + 88) = *(a1 + 56);
        v11 = &OBJC_IVAR____UITabContainerView__alongsideAnimator;
        goto LABEL_44;
      }

      if (v51 < a3)
      {
        v51 = a3;
      }

      *(a1 + 56) = v51;
      v11 = &OBJC_IVAR____UITabContainerView__alongsideAnimator;
    }

    else
    {
    }

    *(a1 + 88) = *(a1 + 56);
    if (v45)
    {
      if (v54)
      {
        goto LABEL_52;
      }

LABEL_44:
      [*(a2 + v11[215]) textToSecondaryTextHorizontalPadding];
      v59 = a3 - v51 - v58;
      if (v59 >= 0.0)
      {
        v83 = 0;
        v61 = [(UIListContentView *)a2 _intrinsicSizeForLabel:v45 inAvailableSpace:&v83 outRequiresMultipleLines:v59, a4];
        v49 = *v7;
        v50 = v7[1];
        *(a1 + 72) = fmax(*v7, fmin(v61, v59));
        *(a1 + 80) = fmax(v50, fmin(v62, a4));
        v53 = *(a1 + 64);
        if (v51 == v49 && v53 == v50)
        {
          *(a1 + 48) = 0;
LABEL_59:
          [*(a2 + v11[215]) textToSecondaryTextHorizontalPadding];
          v73 = *(a1 + 88) + v72 + *(a1 + 72);
          if (*(a1 + 96) >= *(a1 + 80))
          {
            v74 = *(a1 + 96);
          }

          else
          {
            v74 = *(a1 + 80);
          }

          *(a1 + 88) = v73;
          *(a1 + 96) = v74;
          goto LABEL_63;
        }

        v60 = v83 || v61 > v59;
      }

      else
      {
        v53 = *(a1 + 64);
        v49 = *v7;
        v50 = v7[1];
        v60 = v51 != *v7;
        if (v53 != v50)
        {
          v60 = 1;
        }
      }

      *(a1 + 48) = v60;
      if (v60)
      {
LABEL_52:
        [*(a2 + v11[215]) textToSecondaryTextVerticalPadding];
        v64 = a4 - v53 - v63;
        v65 = fmax(v49, fmin([(UIListContentView *)a2 _intrinsicSizeForLabel:v45 inAvailableSpace:0 outRequiresMultipleLines:a3, v64], a3));
        v67 = fmax(v50, fmin(v66, v64));
        *(a1 + 72) = v65;
        *(a1 + 80) = v67;
        v68 = [*(a2 + v11[215]) secondaryTextProperties];
        v69 = [v68 alignment];

        if (v69)
        {
          if (v65 < a3)
          {
            v65 = a3;
          }

          *(a1 + 72) = v65;
        }

        v70 = *(a1 + 88);
        if (v70 < v65)
        {
          v70 = v65;
        }

        *(a1 + 88) = v70;
        [*(a2 + v11[215]) textToSecondaryTextVerticalPadding];
        *(a1 + 96) = *(a1 + 96) + v67 + v71;
        goto LABEL_63;
      }

      goto LABEL_59;
    }
  }

  else if (v45)
  {
    v51 = *(a1 + 56);
    goto LABEL_44;
  }

LABEL_63:
  v75 = [a2[54] textInputView];

  if (v75)
  {
    if (!v43 || [v43 isHidden])
    {
      v77 = [MEMORY[0x1E696AAA8] currentHandler];
      [v77 handleFailureInMethod:sel__computeLayoutInfoForAvailableSpace_ object:a2 file:@"UIListContentConfiguration.m" lineNumber:1865 description:@"The text label should exist if there is a text input view"];
    }

    v76 = *(a1 + 64);
    *(a1 + 104) = a3 - v41;
    *(a1 + 112) = v76;
  }
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (self && (animatingToConfiguration = self->_animatingToConfiguration) != 0 && (configuration = self->_configuration, configuration != animatingToConfiguration))
  {
    v8 = configuration;
    [(UIListContentView *)&self->super.super.super.isa _applyConfiguration:?];
  }

  else
  {
    v8 = 0;
  }

  if (width >= self->_preferredMaxLayoutWidth)
  {
    preferredMaxLayoutWidth = self->_preferredMaxLayoutWidth;
  }

  else
  {
    preferredMaxLayoutWidth = width;
  }

  [(UIView *)self directionalLayoutMargins];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  [(UIListContentView *)&v30 _computeLayoutInfoForAvailableSpace:preferredMaxLayoutWidth - v12 - v16, height - v10 - v14];
  v18 = v17 + v13 + *(&v35 + 1);
  v19 = v15 + v11 + *&v36;
  if (v30 != 2)
  {
    v20 = v18 + *(&v31 + 1);
    if (*(&v31 + 1) > 0.0 && v18 > 0.0)
    {
      [(UIListContentConfiguration *)self->_configuration imageToTextPadding];
      v20 = v20 + v21;
    }

    if (v15 + v11 + *&v32 >= v19)
    {
      v19 = v15 + v11 + *&v32;
    }

    v18 = v20;
  }

  v22 = self->_configuration;
  v23 = [(UIView *)self traitCollection];
  [(UIListContentConfiguration *)v22 _minimumHeightForTraitCollection:v23];
  v25 = v24;

  if (v8)
  {
    [(UIListContentView *)&self->super.super.super.isa _applyConfiguration:v8];
  }

  if (preferredMaxLayoutWidth >= v18)
  {
    v26 = v18;
  }

  else
  {
    v26 = preferredMaxLayoutWidth;
  }

  if (v25 >= v19)
  {
    v27 = v25;
  }

  else
  {
    v27 = v19;
  }

  if (height >= v27)
  {
    height = v27;
  }

  v28 = v26;
  v29 = height;
  result.height = v29;
  result.width = v28;
  return result;
}

- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)a3
{
  v4.receiver = self;
  v4.super_class = UIListContentView;
  [(UIView *)&v4 _layoutMarginsDidChangeFromOldMargins:a3.top, a3.left, a3.bottom, a3.right];
  [(UIView *)self invalidateIntrinsicContentSize];
  [(UIView *)self setNeedsLayout];
}

- (void)_setFrame:(int)a3 forView:(double)a4 isOldFrameInvalid:(double)a5
{
  v13 = a2;
  if (a1)
  {
    if (a3 && +[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __57__UIListContentView__setFrame_forView_isOldFrameInvalid___block_invoke;
      v14[3] = &unk_1E70F3B20;
      v15 = v13;
      v16 = a4;
      v17 = a5;
      v18 = a6;
      v19 = a7;
      [UIView performWithoutAnimation:v14];
    }

    else
    {
      [v13 setFrame:{a4, a5, a6, a7}];
    }
  }
}

- (UILayoutGuide)textLayoutGuide
{
  v25[4] = *MEMORY[0x1E69E9840];
  if (!self->_textLayoutGuide)
  {
    v3 = [(UIListContentView *)&self->super.super.super.isa _textLabel];

    if (v3)
    {
      v4 = objc_alloc_init(UILayoutGuide);
      textLayoutGuide = self->_textLayoutGuide;
      self->_textLayoutGuide = v4;

      [(UIView *)self addLayoutGuide:self->_textLayoutGuide];
      [(UILayoutGuide *)self->_textLayoutGuide setIdentifier:@"UIListContentViewTextLayoutGuide"];
      [(UILayoutGuide *)self->_textLayoutGuide _setLockedToOwningView:1];
      v6 = [(UILayoutGuide *)self->_textLayoutGuide leadingAnchor];
      v7 = [(UIListContentView *)&self->super.super.super.isa _textLabel];
      v8 = [v7 leadingAnchor];
      v9 = [v6 constraintEqualToAnchor:v8];

      [v9 setIdentifier:@"UIListContentView-leading-textLayoutGuide-constraint"];
      v10 = [(UILayoutGuide *)self->_textLayoutGuide trailingAnchor];
      v11 = [(UIListContentView *)&self->super.super.super.isa _textLabel];
      v12 = [v11 trailingAnchor];
      v13 = [v10 constraintEqualToAnchor:v12];

      [v13 setIdentifier:@"UIListContentView-trailing-textLayoutGuide-constraint"];
      v14 = [(UILayoutGuide *)self->_textLayoutGuide topAnchor];
      v15 = [(UIListContentView *)&self->super.super.super.isa _textLabel];
      v16 = [v15 topAnchor];
      v17 = [v14 constraintEqualToAnchor:v16];

      [v17 setIdentifier:@"UIListContentView-top-textLayoutGuide-constraint"];
      v18 = [(UILayoutGuide *)self->_textLayoutGuide bottomAnchor];
      v19 = [(UIListContentView *)&self->super.super.super.isa _textLabel];
      v20 = [v19 bottomAnchor];
      v21 = [v18 constraintEqualToAnchor:v20];

      [v21 setIdentifier:@"UIListContentView-bottom-textLayoutGuide-constraint"];
      v25[0] = v9;
      v25[1] = v13;
      v25[2] = v17;
      v25[3] = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
      [(UILayoutGuide *)self->_textLayoutGuide _setSystemConstraints:v22];
      [MEMORY[0x1E69977A0] activateConstraints:v22];
    }
  }

  v23 = self->_textLayoutGuide;

  return v23;
}

- (UILayoutGuide)secondaryTextLayoutGuide
{
  v25[4] = *MEMORY[0x1E69E9840];
  if (!self->_secondaryTextLayoutGuide)
  {
    v3 = [(UIListContentView *)&self->super.super.super.isa _secondaryTextLabel];

    if (v3)
    {
      v4 = objc_alloc_init(UILayoutGuide);
      secondaryTextLayoutGuide = self->_secondaryTextLayoutGuide;
      self->_secondaryTextLayoutGuide = v4;

      [(UIView *)self addLayoutGuide:self->_secondaryTextLayoutGuide];
      [(UILayoutGuide *)self->_secondaryTextLayoutGuide setIdentifier:@"UIListContentViewSecondaryTextLayoutGuide"];
      [(UILayoutGuide *)self->_secondaryTextLayoutGuide _setLockedToOwningView:1];
      v6 = [(UILayoutGuide *)self->_secondaryTextLayoutGuide leadingAnchor];
      v7 = [(UIListContentView *)&self->super.super.super.isa _secondaryTextLabel];
      v8 = [v7 leadingAnchor];
      v9 = [v6 constraintEqualToAnchor:v8];

      [v9 setIdentifier:@"UIListContentView-leading-secondaryTextLayoutGuide-constraint"];
      v10 = [(UILayoutGuide *)self->_secondaryTextLayoutGuide trailingAnchor];
      v11 = [(UIListContentView *)&self->super.super.super.isa _secondaryTextLabel];
      v12 = [v11 trailingAnchor];
      v13 = [v10 constraintEqualToAnchor:v12];

      [v13 setIdentifier:@"UIListContentView-trailing-secondaryTextLayoutGuide-constraint"];
      v14 = [(UILayoutGuide *)self->_secondaryTextLayoutGuide topAnchor];
      v15 = [(UIListContentView *)&self->super.super.super.isa _secondaryTextLabel];
      v16 = [v15 topAnchor];
      v17 = [v14 constraintEqualToAnchor:v16];

      [v17 setIdentifier:@"UIListContentView-top-secondaryTextLayoutGuide-constraint"];
      v18 = [(UILayoutGuide *)self->_secondaryTextLayoutGuide bottomAnchor];
      v19 = [(UIListContentView *)&self->super.super.super.isa _secondaryTextLabel];
      v20 = [v19 bottomAnchor];
      v21 = [v18 constraintEqualToAnchor:v20];

      [v21 setIdentifier:@"UIListContentView-bottom-secondaryTextLayoutGuide-constraint"];
      v25[0] = v9;
      v25[1] = v13;
      v25[2] = v17;
      v25[3] = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
      [(UILayoutGuide *)self->_secondaryTextLayoutGuide _setSystemConstraints:v22];
      [MEMORY[0x1E69977A0] activateConstraints:v22];
    }
  }

  v23 = self->_secondaryTextLayoutGuide;

  return v23;
}

- (BOOL)becomeFirstResponder
{
  editingController = self->_editingController;
  if (editingController)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __41__UIListContentView_becomeFirstResponder__block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    return [(_UIContentViewEditingController *)editingController makeTextInputFirstResponderWithInitialLayoutBlock:v5];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = UIListContentView;
    return [(UIView *)&v4 becomeFirstResponder];
  }
}

- (NSLayoutRect)_primaryTextLayoutRect
{
  v2 = [(UIListContentView *)&self->super.super.super.isa _textLabel];
  v3 = [v2 _layoutRect];

  return v3;
}

- (int64_t)_listCellStyle
{
  configuration = self->_configuration;
  if (configuration)
  {
    defaultStyle = configuration->_defaultStyle;
    if (defaultStyle < 0x13)
    {
      return qword_18A6825E8[defaultStyle];
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[UIListContentConfiguration _contentViewCellStyle]"];
    [v5 handleFailureInFunction:v6 file:@"UIListContentConfiguration.m" lineNumber:1396 description:{@"Unknown style: %ld", configuration->_defaultStyle}];
  }

  return 0;
}

- (int64_t)_listCellProminence
{
  configuration = self->_configuration;
  if (!configuration)
  {
    return 0;
  }

  defaultStyle = configuration->_defaultStyle;
  if (defaultStyle == 12)
  {
    return 1;
  }

  else
  {
    return 2 * (defaultStyle == 13);
  }
}

@end