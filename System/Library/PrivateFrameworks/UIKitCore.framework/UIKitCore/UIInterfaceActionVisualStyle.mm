@interface UIInterfaceActionVisualStyle
+ (id)idiomSpecificStyleForTraitCollection:(id)collection presentationStyle:(int64_t)style;
- (BOOL)allowsZeroSizedSectionSeparators;
- (BOOL)isEqual:(id)equal;
- (BOOL)selectByIndirectPointerTouchRequired;
- (BOOL)selectByPressGestureRequired;
- (BOOL)selectionFeedbackEnabled;
- (CGSize)maximumActionGroupContentSize;
- (CGSize)minimumActionContentSize;
- (NSString)description;
- (UIEdgeInsets)actionSequenceEdgeInsets;
- (UIEdgeInsets)contentMargin;
- (UIInterfaceActionVisualStyle)init;
- (UIInterfaceActionVisualStyle)initWithConcreteVisualStyle:(id)style;
- (double)actionSectionSpacing;
- (double)actionSpacingForGroupViewState:(id)state;
- (double)actionTitleLabelMinimumScaleFactor;
- (double)contentCornerRadius;
- (double)horizontalImageContentSpacing;
- (double)verticalImageContentSpacing;
- (id)_base_actionPropertiesAffectingImageViewStyling;
- (id)_base_actionPropertiesAffectingLabelStyling;
- (id)_contrastingColorForColor:(id)color;
- (id)_styleForVisualProperties;
- (id)actionBackgroundColorForViewState:(id)state;
- (id)actionClassificationLabelColorForViewState:(id)state;
- (id)actionClassificationLabelFontForViewState:(id)state;
- (id)actionGroupPropertiesAffectingActionsScrollViewStyling;
- (id)actionImageViewTintColorForImageProperty:(id)property actionViewState:(id)state;
- (id)actionPropertiesAffectingActionRepresentationViewStyling;
- (id)actionPropertiesAffectingImageViewStyling;
- (id)actionPropertiesAffectingLabelStyling;
- (id)actionTitleLabelColorForViewState:(id)state;
- (id)actionTitleLabelCompositingFilterForViewState:(id)state;
- (id)actionTitleLabelFontForViewState:(id)state;
- (id)actionViewStateForAttachingToActionRepresentationView:(id)view;
- (id)copyWithGroupViewState:(id)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)defaultConcreteActionTitleLabelPreferredFont;
- (id)defaultConcreteActionTitleLabelRegularFont;
- (id)defaultScreen;
- (id)newActionBackgroundViewForViewState:(id)state;
- (id)newActionSeparatorViewForGroupViewState:(id)state;
- (id)newGroupBackgroundViewWithGroupViewState:(id)state;
- (id)newSectionSeparatorViewForGroupViewState:(id)state;
- (void)_base_configureAttributesForImageView:(id)view imageProperty:(id)property actionViewState:(id)state;
- (void)_base_configureAttributesForTitleLabel:(id)label classificationLabel:(id)classificationLabel actionViewState:(id)state;
- (void)configureAttributesForActionRepresentationView:(id)view actionViewState:(id)state;
- (void)configureAttributesForActionScrollView:(id)view groupViewState:(id)state;
- (void)configureAttributesForImageView:(id)view imageProperty:(id)property actionViewState:(id)state;
- (void)configureAttributesForTitleLabel:(id)label classificationLabel:(id)classificationLabel actionViewState:(id)state;
- (void)configureForDismissingGroupView:(id)view alongsideTransitionCoordinator:(id)coordinator;
- (void)configureForPresentingGroupView:(id)view alongsideTransitionCoordinator:(id)coordinator;
- (void)setConcreteVisualStyle:(id)style;
- (void)setVisualStyleOverride:(id)override;
@end

@implementation UIInterfaceActionVisualStyle

- (UIInterfaceActionVisualStyle)init
{
  v3 = objc_alloc_init(UIInterfaceActionConcreteVisualStyle);
  v4 = [(UIInterfaceActionVisualStyle *)self initWithConcreteVisualStyle:v3];

  return v4;
}

- (UIInterfaceActionVisualStyle)initWithConcreteVisualStyle:(id)style
{
  styleCopy = style;
  v12.receiver = self;
  v12.super_class = UIInterfaceActionVisualStyle;
  v6 = [(UIInterfaceActionVisualStyle *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_concreteVisualStyle, style);
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
    visualStyleOverride = [MEMORY[0x1E696AEC0] stringWithFormat:@", overridesStyle = %@", visualStyleOverride];
  }

  else
  {
    visualStyleOverride = &stru_1EFB14550;
  }

  v5 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = UIInterfaceActionVisualStyle;
  v6 = [(UIInterfaceActionVisualStyle *)&v9 description];
  v7 = [v5 stringWithFormat:@"%@ concreteStyle = %@%@", v6, self->_concreteVisualStyle, visualStyleOverride];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    groupViewState = [(UIInterfaceActionVisualStyle *)self groupViewState];
    groupViewState2 = [v7 groupViewState];
    if ([groupViewState isEqual:groupViewState2])
    {
      concreteVisualStyle = [(UIInterfaceActionVisualStyle *)self concreteVisualStyle];
      concreteVisualStyle2 = [v7 concreteVisualStyle];
      v6 = [concreteVisualStyle isEqual:concreteVisualStyle2];
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

- (id)copyWithZone:(_NSZone *)zone
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

- (id)copyWithGroupViewState:(id)state
{
  stateCopy = state;
  v5 = [(UIInterfaceActionVisualStyle *)self copy];
  screen = [stateCopy screen];

  if (!screen)
  {
    defaultScreen = [(UIInterfaceActionVisualStyle *)self defaultScreen];
    v8 = [stateCopy copyWithScreen:defaultScreen];

    stateCopy = v8;
  }

  v9 = v5[1];
  v5[1] = stateCopy;

  return v5;
}

- (void)setVisualStyleOverride:(id)override
{
  overrideCopy = override;
  if (![(UIInterfaceActionOverrideVisualStyle *)self->_visualStyleOverride isEqual:?])
  {
    objc_storeStrong(&self->_visualStyleOverride, override);
    [(UIInterfaceActionVisualStyle *)self->_visualStyleOverride setConcreteVisualStyle:self->_concreteVisualStyle];
  }
}

- (void)setConcreteVisualStyle:(id)style
{
  styleCopy = style;
  if (([(UIInterfaceActionConcreteVisualStyleImpl *)self->_concreteVisualStyle isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_concreteVisualStyle, style);
    [(UIInterfaceActionVisualStyle *)self->_visualStyleOverride setConcreteVisualStyle:self->_concreteVisualStyle];
  }
}

+ (id)idiomSpecificStyleForTraitCollection:(id)collection presentationStyle:(int64_t)style
{
  v18[5] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  userInterfaceIdiom = [collectionCopy userInterfaceIdiom];
  if (userInterfaceIdiom == -1)
  {
    v7 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v7 userInterfaceIdiom];
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
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:userInterfaceIdiom];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v10 = objc_opt_class();
  }

  v11 = [v10 styleForTraitCollection:collectionCopy presentationStyle:style];
  if (!v11)
  {
    v11 = [UIInterfaceActionConcreteVisualStyleFactory_iOS styleForTraitCollection:collectionCopy presentationStyle:style];
  }

  v12 = [objc_alloc(objc_opt_class()) initWithConcreteVisualStyle:v11];
  groupViewState = [v12 groupViewState];
  v14 = [groupViewState copyWithTraitCollection:collectionCopy];
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

- (id)_contrastingColorForColor:(id)color
{
  v13 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v10 = 0.0;
  [color getHue:&v13 saturation:&v12 brightness:&v11 alpha:&v10];
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

- (void)_base_configureAttributesForTitleLabel:(id)label classificationLabel:(id)classificationLabel actionViewState:(id)state
{
  labelCopy = label;
  classificationLabelCopy = classificationLabel;
  stateCopy = state;
  action = [stateCopy action];
  _titleTextColor = [action _titleTextColor];
  v12 = _titleTextColor;
  if (classificationLabelCopy)
  {
    if (_titleTextColor)
    {
      v13 = _titleTextColor;
    }

    else
    {
      v13 = [(UIInterfaceActionVisualStyle *)self actionClassificationLabelColorForViewState:stateCopy];
    }

    v14 = v13;
    v15 = [(UIInterfaceActionVisualStyle *)self actionClassificationLabelFontForViewState:stateCopy];
    [classificationLabelCopy setFont:v15];

    [classificationLabelCopy _setTextColorFollowsTintColor:1];
    [classificationLabelCopy setTintColor:v14];
  }

  if (v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = [(UIInterfaceActionVisualStyle *)self actionTitleLabelColorForViewState:stateCopy];
  }

  v17 = v16;
  v18 = [(UIInterfaceActionVisualStyle *)self actionTitleLabelFontForViewState:stateCopy];
  [labelCopy setFont:v18];

  [labelCopy _setTextColorFollowsTintColor:1];
  if (_UISolariumEnabled())
  {
    v19 = [(UIInterfaceActionVisualStyle *)self actionBackgroundColorForViewState:stateCopy];
    traitCollection = [labelCopy traitCollection];
    v21 = [v19 resolvedColorWithTraitCollection:traitCollection];

    traitCollection2 = [labelCopy traitCollection];
    v23 = [v17 resolvedColorWithTraitCollection:traitCollection2];

    if ([v23 _isSimilarToColor:v21 withinPercentage:0.01])
    {
      v24 = [(UIInterfaceActionVisualStyle *)self _contrastingColorForColor:v17];

      v17 = v24;
    }
  }

  [labelCopy setTintColor:v17];
  LODWORD(v25) = 1053609165;
  [labelCopy _setHyphenationFactor:v25];
  v26 = [(UIInterfaceActionVisualStyle *)self actionTitleLabelCompositingFilterForViewState:stateCopy];
  layer = [labelCopy layer];
  [layer setCompositingFilter:v26];

  superview = [labelCopy superview];
  layer2 = [superview layer];
  [layer2 setAllowsGroupBlending:v26 == 0];

  superview2 = [labelCopy superview];
  layer3 = [superview2 layer];
  [layer3 setAllowsGroupOpacity:v26 == 0];

  traitCollection3 = [labelCopy traitCollection];
  preferredContentSizeCategory = [traitCollection3 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    [labelCopy setMinimumScaleFactor:1.0];
    [labelCopy setAdjustsFontSizeToFitWidth:0];
    [labelCopy setNumberOfLines:0];
    v34 = 0;
    v35 = 0;
  }

  else if (classificationLabelCopy)
  {
    [labelCopy setMinimumScaleFactor:1.0];
    [labelCopy setAdjustsFontSizeToFitWidth:0];
    v34 = 0;
    v35 = 4;
  }

  else
  {
    v34 = 1;
    [labelCopy setAdjustsFontSizeToFitWidth:1];
    [(UIInterfaceActionVisualStyle *)self actionTitleLabelMinimumScaleFactor];
    [labelCopy setMinimumScaleFactor:?];
    v35 = 5;
  }

  [labelCopy setBaselineAdjustment:v34];
  [labelCopy setLineBreakMode:v35];
}

- (id)_base_actionPropertiesAffectingImageViewStyling
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0x1EFB163B0;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)_base_configureAttributesForImageView:(id)view imageProperty:(id)property actionViewState:(id)state
{
  viewCopy = view;
  stateCopy = state;
  propertyCopy = property;
  action = [stateCopy action];
  v11 = [(UIInterfaceActionVisualStyle *)self actionImageViewTintColorForImageProperty:propertyCopy actionViewState:stateCopy];

  if (v11)
  {
    goto LABEL_11;
  }

  _titleTextColor = [action _titleTextColor];
  v13 = _titleTextColor;
  if (_titleTextColor)
  {
    v14 = _titleTextColor;
  }

  else
  {
    v14 = [(UIInterfaceActionVisualStyle *)self actionTitleLabelColorForViewState:stateCopy];
  }

  v15 = v14;
  action2 = [stateCopy action];
  _imageTintColor = [action2 _imageTintColor];

  if (_imageTintColor)
  {
    action3 = [stateCopy action];
    _imageTintColor2 = [action3 _imageTintColor];
  }

  else
  {
    superview = [viewCopy superview];
    tintColor = [superview tintColor];

    if (v15 != tintColor)
    {
      v11 = v15;
      goto LABEL_10;
    }

    action3 = [viewCopy superview];
    _imageTintColor2 = [action3 tintColor];
  }

  v11 = _imageTintColor2;

LABEL_10:
LABEL_11:
  [viewCopy setTintColor:v11];
  if ([action isEnabled])
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

  if ([viewCopy tintAdjustmentMode] != v22)
  {
    [viewCopy setTintAdjustmentMode:v22];
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
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  defaultScreen = [_styleForVisualProperties defaultScreen];

  return defaultScreen;
}

- (CGSize)maximumActionGroupContentSize
{
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [_styleForVisualProperties maximumActionGroupContentSize];
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
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [_styleForVisualProperties minimumActionContentSize];
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
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [_styleForVisualProperties horizontalImageContentSpacing];
  v4 = v3;

  return v4;
}

- (double)verticalImageContentSpacing
{
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [_styleForVisualProperties verticalImageContentSpacing];
  v4 = v3;

  return v4;
}

- (BOOL)allowsZeroSizedSectionSeparators
{
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  allowsZeroSizedSectionSeparators = [_styleForVisualProperties allowsZeroSizedSectionSeparators];

  return allowsZeroSizedSectionSeparators;
}

- (double)actionSectionSpacing
{
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [_styleForVisualProperties actionSectionSpacing];
  v4 = v3;

  return v4;
}

- (UIEdgeInsets)actionSequenceEdgeInsets
{
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [_styleForVisualProperties actionSequenceEdgeInsets];
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
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [_styleForVisualProperties contentCornerRadius];
  v4 = v3;

  return v4;
}

- (UIEdgeInsets)contentMargin
{
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [_styleForVisualProperties contentMargin];
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
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  selectByPressGestureRequired = [_styleForVisualProperties selectByPressGestureRequired];

  return selectByPressGestureRequired;
}

- (BOOL)selectionFeedbackEnabled
{
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  selectionFeedbackEnabled = [_styleForVisualProperties selectionFeedbackEnabled];

  return selectionFeedbackEnabled;
}

- (BOOL)selectByIndirectPointerTouchRequired
{
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  selectByIndirectPointerTouchRequired = [_styleForVisualProperties selectByIndirectPointerTouchRequired];

  return selectByIndirectPointerTouchRequired;
}

- (double)actionTitleLabelMinimumScaleFactor
{
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [_styleForVisualProperties actionTitleLabelMinimumScaleFactor];
  v4 = v3;

  return v4;
}

- (id)actionViewStateForAttachingToActionRepresentationView:(id)view
{
  viewCopy = view;
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v6 = [_styleForVisualProperties actionViewStateForAttachingToActionRepresentationView:viewCopy];

  return v6;
}

- (id)newGroupBackgroundViewWithGroupViewState:(id)state
{
  stateCopy = state;
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v6 = [_styleForVisualProperties newGroupBackgroundViewWithGroupViewState:stateCopy];

  return v6;
}

- (id)newActionSeparatorViewForGroupViewState:(id)state
{
  stateCopy = state;
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v6 = [_styleForVisualProperties newActionSeparatorViewForGroupViewState:stateCopy];

  return v6;
}

- (id)newSectionSeparatorViewForGroupViewState:(id)state
{
  stateCopy = state;
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [_styleForVisualProperties actionSectionSpacing];
  v7 = v6;

  _styleForVisualProperties2 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  allowsZeroSizedSectionSeparators = [_styleForVisualProperties2 allowsZeroSizedSectionSeparators];

  if (allowsZeroSizedSectionSeparators)
  {
    v10 = v7 >= 0.0;
  }

  else
  {
    v10 = v7 > 0.0;
  }

  if (v10)
  {
    _styleForVisualProperties3 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
    v12 = [_styleForVisualProperties3 newSectionSeparatorViewForGroupViewState:stateCopy];
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

- (id)newActionBackgroundViewForViewState:(id)state
{
  stateCopy = state;
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v6 = [_styleForVisualProperties newActionBackgroundViewForViewState:stateCopy];

  return v6;
}

- (id)actionTitleLabelFontForViewState:(id)state
{
  stateCopy = state;
  fontForViewStateBlock = [(UIInterfaceActionVisualStyle *)self fontForViewStateBlock];

  if (fontForViewStateBlock)
  {
    fontForViewStateBlock2 = [(UIInterfaceActionVisualStyle *)self fontForViewStateBlock];
    (fontForViewStateBlock2)[2](fontForViewStateBlock2, stateCopy);
  }

  else
  {
    fontForViewStateBlock2 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
    [fontForViewStateBlock2 actionTitleLabelFontForViewState:stateCopy];
  }
  v7 = ;

  return v7;
}

- (id)actionTitleLabelColorForViewState:(id)state
{
  stateCopy = state;
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v6 = [_styleForVisualProperties actionTitleLabelColorForViewState:stateCopy];

  return v6;
}

- (id)actionBackgroundColorForViewState:(id)state
{
  stateCopy = state;
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v6 = [_styleForVisualProperties actionBackgroundColorForViewState:stateCopy];

  return v6;
}

- (id)actionTitleLabelCompositingFilterForViewState:(id)state
{
  stateCopy = state;
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v6 = [_styleForVisualProperties actionTitleLabelCompositingFilterForViewState:stateCopy];

  return v6;
}

- (id)actionClassificationLabelFontForViewState:(id)state
{
  stateCopy = state;
  fontForViewStateBlock = [(UIInterfaceActionVisualStyle *)self fontForViewStateBlock];

  if (fontForViewStateBlock)
  {
    fontForViewStateBlock2 = [(UIInterfaceActionVisualStyle *)self fontForViewStateBlock];
    (fontForViewStateBlock2)[2](fontForViewStateBlock2, stateCopy);
  }

  else
  {
    fontForViewStateBlock2 = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
    [fontForViewStateBlock2 actionClassificationLabelFontForViewState:stateCopy];
  }
  v7 = ;

  return v7;
}

- (id)actionClassificationLabelColorForViewState:(id)state
{
  stateCopy = state;
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v6 = [_styleForVisualProperties actionClassificationLabelColorForViewState:stateCopy];

  return v6;
}

- (id)actionImageViewTintColorForImageProperty:(id)property actionViewState:(id)state
{
  stateCopy = state;
  propertyCopy = property;
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  v9 = [_styleForVisualProperties actionImageViewTintColorForImageProperty:propertyCopy actionViewState:stateCopy];

  return v9;
}

- (double)actionSpacingForGroupViewState:(id)state
{
  stateCopy = state;
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [_styleForVisualProperties actionSpacingForGroupViewState:stateCopy];
  v7 = v6;

  return v7;
}

- (void)configureForPresentingGroupView:(id)view alongsideTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  viewCopy = view;
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [_styleForVisualProperties configureForPresentingGroupView:viewCopy alongsideTransitionCoordinator:coordinatorCopy];
}

- (void)configureForDismissingGroupView:(id)view alongsideTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  viewCopy = view;
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [_styleForVisualProperties configureForDismissingGroupView:viewCopy alongsideTransitionCoordinator:coordinatorCopy];
}

- (id)actionGroupPropertiesAffectingActionsScrollViewStyling
{
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  actionPropertiesAffectingImageViewStyling = [_styleForVisualProperties actionPropertiesAffectingImageViewStyling];
  v4 = actionPropertiesAffectingImageViewStyling;
  if (actionPropertiesAffectingImageViewStyling)
  {
    v5 = actionPropertiesAffectingImageViewStyling;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (void)configureAttributesForActionScrollView:(id)view groupViewState:(id)state
{
  stateCopy = state;
  viewCopy = view;
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [_styleForVisualProperties configureAttributesForActionScrollView:viewCopy groupViewState:stateCopy];
}

- (id)actionPropertiesAffectingLabelStyling
{
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  actionPropertiesAffectingLabelStyling = [_styleForVisualProperties actionPropertiesAffectingLabelStyling];
  v5 = actionPropertiesAffectingLabelStyling;
  v6 = MEMORY[0x1E695E0F0];
  if (actionPropertiesAffectingLabelStyling)
  {
    v6 = actionPropertiesAffectingLabelStyling;
  }

  v7 = v6;

  _base_actionPropertiesAffectingLabelStyling = [(UIInterfaceActionVisualStyle *)self _base_actionPropertiesAffectingLabelStyling];
  v9 = [v7 arrayByAddingObjectsFromArray:_base_actionPropertiesAffectingLabelStyling];

  return v9;
}

- (void)configureAttributesForTitleLabel:(id)label classificationLabel:(id)classificationLabel actionViewState:(id)state
{
  stateCopy = state;
  classificationLabelCopy = classificationLabel;
  labelCopy = label;
  [(UIInterfaceActionVisualStyle *)self _base_configureAttributesForTitleLabel:labelCopy classificationLabel:classificationLabelCopy actionViewState:stateCopy];
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [_styleForVisualProperties configureAttributesForTitleLabel:labelCopy classificationLabel:classificationLabelCopy actionViewState:stateCopy];
}

- (id)actionPropertiesAffectingImageViewStyling
{
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  actionPropertiesAffectingImageViewStyling = [_styleForVisualProperties actionPropertiesAffectingImageViewStyling];
  v5 = actionPropertiesAffectingImageViewStyling;
  v6 = MEMORY[0x1E695E0F0];
  if (actionPropertiesAffectingImageViewStyling)
  {
    v6 = actionPropertiesAffectingImageViewStyling;
  }

  v7 = v6;

  _base_actionPropertiesAffectingImageViewStyling = [(UIInterfaceActionVisualStyle *)self _base_actionPropertiesAffectingImageViewStyling];
  v9 = [v7 arrayByAddingObjectsFromArray:_base_actionPropertiesAffectingImageViewStyling];

  return v9;
}

- (void)configureAttributesForImageView:(id)view imageProperty:(id)property actionViewState:(id)state
{
  stateCopy = state;
  propertyCopy = property;
  viewCopy = view;
  [(UIInterfaceActionVisualStyle *)self _base_configureAttributesForImageView:viewCopy imageProperty:propertyCopy actionViewState:stateCopy];
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [_styleForVisualProperties configureAttributesForImageView:viewCopy imageProperty:propertyCopy actionViewState:stateCopy];
}

- (id)actionPropertiesAffectingActionRepresentationViewStyling
{
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  actionPropertiesAffectingActionRepresentationViewStyling = [_styleForVisualProperties actionPropertiesAffectingActionRepresentationViewStyling];
  v4 = actionPropertiesAffectingActionRepresentationViewStyling;
  if (actionPropertiesAffectingActionRepresentationViewStyling)
  {
    v5 = actionPropertiesAffectingActionRepresentationViewStyling;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (void)configureAttributesForActionRepresentationView:(id)view actionViewState:(id)state
{
  stateCopy = state;
  viewCopy = view;
  _styleForVisualProperties = [(UIInterfaceActionVisualStyle *)self _styleForVisualProperties];
  [_styleForVisualProperties configureAttributesForActionRepresentationView:viewCopy actionViewState:stateCopy];
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