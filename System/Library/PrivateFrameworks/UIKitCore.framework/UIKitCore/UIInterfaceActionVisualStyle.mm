@interface UIInterfaceActionVisualStyle
+ (id)idiomSpecificStyleForTraitCollection:(id)a3 presentationStyle:(int64_t)a4;
- (BOOL)allowsZeroSizedSectionSeparators;
- (BOOL)isEqual:(id)a3;
- (BOOL)selectByIndirectPointerTouchRequired;
- (BOOL)selectByPressGestureRequired;
- (BOOL)selectionFeedbackEnabled;
- (CGSize)maximumActionGroupContentSize;
- (CGSize)minimumActionContentSize;
- (NSString)description;
- (UIEdgeInsets)actionSequenceEdgeInsets;
- (UIEdgeInsets)contentMargin;
- (UIInterfaceActionVisualStyle)init;
- (UIInterfaceActionVisualStyle)initWithConcreteVisualStyle:(id)a3;
- (double)actionSectionSpacing;
- (double)actionSpacingForGroupViewState:(id)a3;
- (double)actionTitleLabelMinimumScaleFactor;
- (double)contentCornerRadius;
- (double)horizontalImageContentSpacing;
- (double)verticalImageContentSpacing;
- (id)_base_actionPropertiesAffectingImageViewStyling;
- (id)_base_actionPropertiesAffectingLabelStyling;
- (id)_contrastingColorForColor:(id)a3;
- (id)_styleForVisualProperties;
- (id)actionBackgroundColorForViewState:(id)a3;
- (id)actionClassificationLabelColorForViewState:(id)a3;
- (id)actionClassificationLabelFontForViewState:(id)a3;
- (id)actionGroupPropertiesAffectingActionsScrollViewStyling;
- (id)actionImageViewTintColorForImageProperty:(id)a3 actionViewState:(id)a4;
- (id)actionPropertiesAffectingActionRepresentationViewStyling;
- (id)actionPropertiesAffectingImageViewStyling;
- (id)actionPropertiesAffectingLabelStyling;
- (id)actionTitleLabelColorForViewState:(id)a3;
- (id)actionTitleLabelCompositingFilterForViewState:(id)a3;
- (id)actionTitleLabelFontForViewState:(id)a3;
- (id)actionViewStateForAttachingToActionRepresentationView:(id)a3;
- (id)copyWithGroupViewState:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)defaultConcreteActionTitleLabelPreferredFont;
- (id)defaultConcreteActionTitleLabelRegularFont;
- (id)defaultScreen;
- (id)newActionBackgroundViewForViewState:(id)a3;
- (id)newActionSeparatorViewForGroupViewState:(id)a3;
- (id)newGroupBackgroundViewWithGroupViewState:(id)a3;
- (id)newSectionSeparatorViewForGroupViewState:(id)a3;
- (void)_base_configureAttributesForImageView:(id)a3 imageProperty:(id)a4 actionViewState:(id)a5;
- (void)_base_configureAttributesForTitleLabel:(id)a3 classificationLabel:(id)a4 actionViewState:(id)a5;
- (void)configureAttributesForActionRepresentationView:(id)a3 actionViewState:(id)a4;
- (void)configureAttributesForActionScrollView:(id)a3 groupViewState:(id)a4;
- (void)configureAttributesForImageView:(id)a3 imageProperty:(id)a4 actionViewState:(id)a5;
- (void)configureAttributesForTitleLabel:(id)a3 classificationLabel:(id)a4 actionViewState:(id)a5;
- (void)configureForDismissingGroupView:(id)a3 alongsideTransitionCoordinator:(id)a4;
- (void)configureForPresentingGroupView:(id)a3 alongsideTransitionCoordinator:(id)a4;
- (void)setConcreteVisualStyle:(id)a3;
- (void)setVisualStyleOverride:(id)a3;
@end

@implementation UIInterfaceActionVisualStyle

- (UIInterfaceActionVisualStyle)init
{
  v3 = objc_alloc_init(UIInterfaceActionConcreteVisualStyle);
  v4 = [(UIInterfaceActionVisualStyle *)self initWithConcreteVisualStyle:v3];

  return v4;
}

- (UIInterfaceActionVisualStyle)initWithConcreteVisualStyle:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = UIInterfaceActionVisualStyle;
  v6 = [(UIInterfaceActionVisualStyle *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_concreteVisualStyle, a3);
    visualStyleOverride = v7->_visualStyleOverride;
    v7->_visualStyleOverride = 0;

    v9 = objc_alloc_init(UIInterfaceActionGroupViewState);
    groupViewState = v7->_groupViewState;
    v7->_groupViewState = v9;
  }

  return v7;
}

- (NSString)description
{
  visualStyleOverride = self->_visualStyleOverride;
  if (visualStyleOverride)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@", overridesStyle = %@", visualStyleOverride];
  }

  else
  {
    v4 = &stru_1EFB14550;
  }

  v5 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = UIInterfaceActionVisualStyle;
  v6 = [(UIInterfaceActionVisualStyle *)&v9 description];
  v7 = [v5 stringWithFormat:@"%@ concreteStyle = %@%@", v6, self->_concreteVisualStyle, v4];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    v8 = [(UIInterfaceActionVisualStyle *)self groupViewState];
    v9 = [v7 groupViewState];
    if ([v8 isEqual:v9])
    {
      v10 = [(UIInterfaceActionVisualStyle *)self concreteVisualStyle];
      v11 = [v7 concreteVisualStyle];
      v6 = [v10 isEqual:v11];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(UIInterfaceActionGroupViewState *)self->_groupViewState copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(UIInterfaceActionConcreteVisualStyleImpl *)self->_concreteVisualStyle copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(UIInterfaceActionOverrideVisualStyle *)self->_visualStyleOverride copy];
  v10 = v4[4];
  v4[4] = v9;

  return v4;
}

- (id)copyWithGroupViewState:(id)a3
{
  v4 = a3;
  v5 = [(UIInterfaceActionVisualStyle *)self copy];
  v6 = [v4 screen];

  if (!v6)
  {
    v7 = [(UIInterfaceActionVisualStyle *)self defaultScreen];
    v8 = [v4 copyWithScreen:v7];

    v4 = v8;
  }

  v9 = v5[1];
  v5[1] = v4;

  return v5;
}

- (void)setVisualStyleOverride:(id)a3
{
  v5 = a3;
  if (![(UIInterfaceActionOverrideVisualStyle *)self->_visualStyleOverride isEqual:?])
  {
    objc_storeStrong(&self->_visualStyleOverride, a3);
    [(UIInterfaceActionVisualStyle *)self->_visualStyleOverride setConcreteVisualStyle:self->_concreteVisualStyle];
  }
}

- (void)setConcreteVisualStyle:(id)a3
{
  v5 = a3;
  if (([(UIInterfaceActionConcreteVisualStyleImpl *)self->_concreteVisualStyle isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_concreteVisualStyle, a3);
    [(UIInterfaceActionVisualStyle *)self->_visualStyleOverride setConcreteVisualStyle:self->_concreteVisualStyle];
  }
}

+ (id)idiomSpecificStyleForTraitCollection:(id)a3 presentationStyle:(int64_t)a4
{
  v18[5] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 userInterfaceIdiom];
  if (v6 == -1)
  {
    v7 = +[UIDevice currentDevice];
    v6 = [v7 userInterfaceIdiom];
  }

  v17[0] = &unk_1EFE2F128;
  v18[0] = objc_opt_class();
  v17[1] = &unk_1EFE2F140;
  v18[1] = objc_opt_class();
  v17[2] = &unk_1EFE2F158;
  v18[2] = objc_opt_class();
  v17[3] = &unk_1EFE2F170;
  v18[3] = objc_opt_class();
  v17[4] = &unk_1EFE2F188;
  v18[4] = objc_opt_class();
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v10 = objc_opt_class();
  }

  v11 = [v10 styleForTraitCollection:v5 presentationStyle:a4];
  if (!v11)
  {
    v11 = [UIInterfaceActionConcreteVisualStyleFactory_iOS styleForTraitCollection:v5 presentationStyle:a4];
  }

  v12 = [objc_alloc(objc_opt_class()) initWithConcreteVisualStyle:v11];
  v13 = [v12 groupViewState];
  v14 = [v13 copyWithTraitCollection:v5];
  v15 = v12[1];
  v12[1] = v14;

  return v12;
}

- (id)_base_actionPropertiesAffectingLabelStyling
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = 0x1EFB16410;
  v4[1] = 0x1EFB16330;
  v4[2] = 0x1EFB16390;
  v4[3] = 0x1EFB163D0;
  v4[4] = 0x1EFB163F0;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:5];

  return v2;
}

- (id)_contrastingColorForColor:(id)a3
{
  v13 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v10 = 0.0;
  [a3 getHue:&v13 saturation:&v12 brightness:&v11 alpha:&v10];
  *v3.i64 = v13 + 0.5;
  *v3.i32 = v13 + 0.5;
  *v4.i32 = *v3.i32 - truncf(*v3.i32);
  v5.i64[0] = 0x8000000080000000;
  v5.i64[1] = 0x8000000080000000;
  v6 = *vbslq_s8(v5, v4, v3).i32;
  v7 = 0.0;
  if (v11 <= 0.5)
  {
    v7 = 1.0;
  }

  v8 = [UIColor colorWithHue:v6 saturation:v12 brightness:v7 alpha:v10];

  return v8;
}

- (void)_base_configureAttributesForTitleLabel:(id)a3 classificationLabel:(id)a4 actionViewState:(id)a5
{
  v36 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 action];
  v11 = [v10 _titleTextColor];
  v12 = v11;
  if (v8)
  {
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [(UIInterfaceActionVisualStyle *)self actionClassificationLabelColorForViewState:v9];
    }

    v14 = v13;
    v15 = [(UIInterfaceActionVisualStyle *)self actionClassificationLabelFontForViewState:v9];
    [v8 setFont:v15];

    [v8 _setTextColorFollowsTintColor:1];
    [v8 setTintColor:v14];
  }

  if (v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = [(UIInterfaceActionVisualStyle *)self actionTitleLabelColorForViewState:v9];
  }

  v17 = v16;
  v18 = [(UIInterfaceActionVisualStyle *)self actionTitleLabelFontForViewState:v9];
  [v36 setFont:v18];

  [v36 _setTextColorFollowsTintColor:1];
  if (_UISolariumEnabled())
  {
    v19 = [(UIInterfaceActionVisualStyle *)self actionBackgroundColorForViewState:v9];
    v20 = [v36 traitCollection];
    v21 = [v19 resolvedColorWithTraitCollection:v20];

    v22 = [v36 traitCollection];
    v23 = [v17 resolvedColorWithTraitCollection:v22];

    if ([v23 _isSimilarToColor:v21 withinPercentage:0.01])
    {
      v24 = [(UIInterfaceActionVisualStyle *)self _contrastingColorForColor:v17];

      v17 = v24;
    }
  }

  [v36 setTintColor:v17];
  LODWORD(v25) = 1053609165;
  [v36 _setHyphenationFactor:v25];
  v26 = [(UIInterfaceActionVisualStyle *)self actionTitleLabelCompositingFilterForViewState:v9];
  v27 = [v36 layer];
  [v27 setCompositingFilter:v26];

  v28 = [v36 superview];
  v29 = [v28 layer];
  [v29 setAllowsGroupBlending:v26 == 0];

  v30 = [v36 superview];
  v31 = [v30 layer];
  [v31 setAllowsGroupOpacity:v26 == 0];

  v32 = [v36 traitCollection];
  v33 = [v32 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(v33))
  {
    [v36 setMinimumScaleFactor:1.0];
    [v36 setAdjustsFontSizeToFitWidth:0];
    [v36 setNumberOfLines:0];
    v34 = 0;
    v35 = 0;
  }

  else if (v8)
  {
    [v36 setMinimumScaleFactor:1.0];
    [v36 setAdjustsFontSizeToFitWidth:0];
    v34 = 0;
    v35 = 4;
  }

  else
  {
    v34 = 1;
    [v36 setAdjustsFontSizeToFitWidth:1];
    [(UIInterfaceActionVisualStyle *)self actionTitleLabelMinimumScaleFactor];
    [v36 setMinimumScaleFactor:?];
    v35 = 5;
  }

  [v36 setBaselineAdjustment:v34];
  [v36 setLineBreakMode:v35];
}

- (id)_base_actionPropertiesAffectingImageViewStyling
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0x1EFB163B0;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)_base_configureAttributesForImageView:(id)a3 imageProperty:(id)a4 actionViewState:(id)a5
{
  v23 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v8 action];
  v11 = [(UIInterfaceActionVisualStyle *)self actionImageViewTintColorForImageProperty:v9 actionViewState:v8];

  if (v11)
  {
    goto LABEL_11;
  }

  v12 = [v10 _titleTextColor];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [(UIInterfaceActionVisualStyle *)self actionTitleLabelColorForViewState:v8];
  }

  v15 = v14;
  v16 = [v8 action];
  v17 = [v16 _imageTintColor];

  if (v17)
  {
    v18 = [v8 action];
    v19 = [v18 _imageTintColor];
  }

  else
  {
    v20 = [v23 superview];
    v21 = [v20 tintColor];

    if (v15 != v21)
    {
      v11 = v15;
      goto LABEL_10;
    }

    v18 = [v23 superview];
    v19 = [v18 tintColor];
  }

  v11 = v19;

LABEL_10:
LABEL_11:
  [v23 setTintColor:v11];
  if ([v10 isEnabled])
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

  if ([v23 tintAdjustmentMode] != v22)
  {
    [v23 setTintAdjustmentMode:v22];
  }
}

- (id)_styleForVisualProperties
{
  visualStyleOverride = self->_visualStyleOverride;
  if (!visualStyleOverride)
  {
    visualStyleOverride = self->_concreteVisualStyle;
  }

  return visualStyleOverride;
}

- (id)defaultScreen
{
  v2 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v3 = [v2 defaultScreen];

  return v3;
}

- (CGSize)maximumActionGroupContentSize
{
  v2 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [v2 maximumActionGroupContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)minimumActionContentSize
{
  v2 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [v2 minimumActionContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (double)horizontalImageContentSpacing
{
  v2 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [v2 horizontalImageContentSpacing];
  v4 = v3;

  return v4;
}

- (double)verticalImageContentSpacing
{
  v2 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [v2 verticalImageContentSpacing];
  v4 = v3;

  return v4;
}

- (BOOL)allowsZeroSizedSectionSeparators
{
  v2 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v3 = [v2 allowsZeroSizedSectionSeparators];

  return v3;
}

- (double)actionSectionSpacing
{
  v2 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [v2 actionSectionSpacing];
  v4 = v3;

  return v4;
}

- (UIEdgeInsets)actionSequenceEdgeInsets
{
  v2 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [v2 actionSequenceEdgeInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (double)contentCornerRadius
{
  v2 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [v2 contentCornerRadius];
  v4 = v3;

  return v4;
}

- (UIEdgeInsets)contentMargin
{
  v2 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [v2 contentMargin];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (BOOL)selectByPressGestureRequired
{
  v2 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v3 = [v2 selectByPressGestureRequired];

  return v3;
}

- (BOOL)selectionFeedbackEnabled
{
  v2 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v3 = [v2 selectionFeedbackEnabled];

  return v3;
}

- (BOOL)selectByIndirectPointerTouchRequired
{
  v2 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v3 = [v2 selectByIndirectPointerTouchRequired];

  return v3;
}

- (double)actionTitleLabelMinimumScaleFactor
{
  v2 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [v2 actionTitleLabelMinimumScaleFactor];
  v4 = v3;

  return v4;
}

- (id)actionViewStateForAttachingToActionRepresentationView:(id)a3
{
  v4 = a3;
  v5 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v6 = [v5 actionViewStateForAttachingToActionRepresentationView:v4];

  return v6;
}

- (id)newGroupBackgroundViewWithGroupViewState:(id)a3
{
  v4 = a3;
  v5 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v6 = [v5 newGroupBackgroundViewWithGroupViewState:v4];

  return v6;
}

- (id)newActionSeparatorViewForGroupViewState:(id)a3
{
  v4 = a3;
  v5 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v6 = [v5 newActionSeparatorViewForGroupViewState:v4];

  return v6;
}

- (id)newSectionSeparatorViewForGroupViewState:(id)a3
{
  v4 = a3;
  v5 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [v5 actionSectionSpacing];
  v7 = v6;

  v8 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v9 = [v8 allowsZeroSizedSectionSeparators];

  if (v9)
  {
    v10 = v7 >= 0.0;
  }

  else
  {
    v10 = v7 > 0.0;
  }

  if (v10)
  {
    v11 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
    v12 = [v11 newSectionSeparatorViewForGroupViewState:v4];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = objc_alloc_init(_UIInterfaceActionBlankSeparatorView);
    }

    v15 = v14;

    [(_UIInterfaceActionBlankSeparatorView *)v15 setConstantAxisDimension:v7];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)newActionBackgroundViewForViewState:(id)a3
{
  v4 = a3;
  v5 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v6 = [v5 newActionBackgroundViewForViewState:v4];

  return v6;
}

- (id)actionTitleLabelFontForViewState:(id)a3
{
  v4 = a3;
  v5 = [(UIInterfaceActionVisualStyle *)self fontForViewStateBlock];

  if (v5)
  {
    v6 = [(UIInterfaceActionVisualStyle *)self fontForViewStateBlock];
    (v6)[2](v6, v4);
  }

  else
  {
    v6 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
    [v6 actionTitleLabelFontForViewState:v4];
  }
  v7 = ;

  return v7;
}

- (id)actionTitleLabelColorForViewState:(id)a3
{
  v4 = a3;
  v5 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v6 = [v5 actionTitleLabelColorForViewState:v4];

  return v6;
}

- (id)actionBackgroundColorForViewState:(id)a3
{
  v4 = a3;
  v5 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v6 = [v5 actionBackgroundColorForViewState:v4];

  return v6;
}

- (id)actionTitleLabelCompositingFilterForViewState:(id)a3
{
  v4 = a3;
  v5 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v6 = [v5 actionTitleLabelCompositingFilterForViewState:v4];

  return v6;
}

- (id)actionClassificationLabelFontForViewState:(id)a3
{
  v4 = a3;
  v5 = [(UIInterfaceActionVisualStyle *)self fontForViewStateBlock];

  if (v5)
  {
    v6 = [(UIInterfaceActionVisualStyle *)self fontForViewStateBlock];
    (v6)[2](v6, v4);
  }

  else
  {
    v6 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
    [v6 actionClassificationLabelFontForViewState:v4];
  }
  v7 = ;

  return v7;
}

- (id)actionClassificationLabelColorForViewState:(id)a3
{
  v4 = a3;
  v5 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v6 = [v5 actionClassificationLabelColorForViewState:v4];

  return v6;
}

- (id)actionImageViewTintColorForImageProperty:(id)a3 actionViewState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v9 = [v8 actionImageViewTintColorForImageProperty:v7 actionViewState:v6];

  return v9;
}

- (double)actionSpacingForGroupViewState:(id)a3
{
  v4 = a3;
  v5 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [v5 actionSpacingForGroupViewState:v4];
  v7 = v6;

  return v7;
}

- (void)configureForPresentingGroupView:(id)a3 alongsideTransitionCoordinator:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [v8 configureForPresentingGroupView:v7 alongsideTransitionCoordinator:v6];
}

- (void)configureForDismissingGroupView:(id)a3 alongsideTransitionCoordinator:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [v8 configureForDismissingGroupView:v7 alongsideTransitionCoordinator:v6];
}

- (id)actionGroupPropertiesAffectingActionsScrollViewStyling
{
  v2 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v3 = [v2 actionPropertiesAffectingImageViewStyling];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (void)configureAttributesForActionScrollView:(id)a3 groupViewState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [v8 configureAttributesForActionScrollView:v7 groupViewState:v6];
}

- (id)actionPropertiesAffectingLabelStyling
{
  v3 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v4 = [v3 actionPropertiesAffectingLabelStyling];
  v5 = v4;
  v6 = MEMORY[0x1E695E0F0];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [(UIInterfaceActionVisualStyle *)self _base_actionPropertiesAffectingLabelStyling];
  v9 = [v7 arrayByAddingObjectsFromArray:v8];

  return v9;
}

- (void)configureAttributesForTitleLabel:(id)a3 classificationLabel:(id)a4 actionViewState:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(UIInterfaceActionVisualStyle *)self _base_configureAttributesForTitleLabel:v10 classificationLabel:v9 actionViewState:v8];
  v11 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [v11 configureAttributesForTitleLabel:v10 classificationLabel:v9 actionViewState:v8];
}

- (id)actionPropertiesAffectingImageViewStyling
{
  v3 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v4 = [v3 actionPropertiesAffectingImageViewStyling];
  v5 = v4;
  v6 = MEMORY[0x1E695E0F0];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [(UIInterfaceActionVisualStyle *)self _base_actionPropertiesAffectingImageViewStyling];
  v9 = [v7 arrayByAddingObjectsFromArray:v8];

  return v9;
}

- (void)configureAttributesForImageView:(id)a3 imageProperty:(id)a4 actionViewState:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(UIInterfaceActionVisualStyle *)self _base_configureAttributesForImageView:v10 imageProperty:v9 actionViewState:v8];
  v11 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [v11 configureAttributesForImageView:v10 imageProperty:v9 actionViewState:v8];
}

- (id)actionPropertiesAffectingActionRepresentationViewStyling
{
  v2 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v3 = [v2 actionPropertiesAffectingActionRepresentationViewStyling];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (void)configureAttributesForActionRepresentationView:(id)a3 actionViewState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [v8 configureAttributesForActionRepresentationView:v7 actionViewState:v6];
}

- (id)defaultConcreteActionTitleLabelRegularFont
{
  v3 = +[UIInterfaceActionViewState viewStateRepresentingDefaultAction];
  v4 = [(UIInterfaceActionConcreteVisualStyleImpl *)self->_concreteVisualStyle actionTitleLabelFontForViewState:v3];

  return v4;
}

- (id)defaultConcreteActionTitleLabelPreferredFont
{
  v3 = +[UIInterfaceActionViewState viewStateRepresentingPreferredAction];
  v4 = [(UIInterfaceActionConcreteVisualStyleImpl *)self->_concreteVisualStyle actionTitleLabelFontForViewState:v3];

  return v4;
}

@end