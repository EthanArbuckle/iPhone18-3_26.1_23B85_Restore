@interface _UIAlertControllerActionView
- (BOOL)hasActiveMinimumSizeConstraintsWithSize:(CGSize)size;
- (BOOL)hasLayoutHeightConstraintsIdenticalToInterfaceActionCustomView:(id)view;
- (NSString)description;
- (UIAlertController)alertController;
- (UIAlertControllerVisualStyle)visualStyle;
- (_UIAlertControllerActionView)initWithCoder:(id)coder;
- (_UIAlertControllerActionView)initWithFrame:(CGRect)frame;
- (int64_t)_effectiveTitleTextAlignment;
- (int64_t)focusItemDeferralMode;
- (void)_action:(id)_action changedToEnabled:(BOOL)enabled;
- (void)_action:(id)_action changedToTitleTextAlignment:(int64_t)alignment;
- (void)_buildCheckViewConstraints;
- (void)_buildConstraints;
- (void)_buildContentViewControllerContainerConstraints;
- (void)_buildHavingDescriptiveLabelConstraints;
- (void)_buildImageViewConstraints;
- (void)_buildNotHavingDescriptiveLabelConstraints;
- (void)_loadCheckView;
- (void)_loadContentViewControllerContainerViewIfNecessary;
- (void)_loadContentViewControllerView;
- (void)_loadDescriptiveLabel;
- (void)_loadImageView;
- (void)_prepareConstraintsForHavingDescriptiveText:(BOOL)text;
- (void)_prepareConstraintsForImage:(id)image;
- (void)_recomputeColors;
- (void)_removeContentViewControllerContainerViewSubviews;
- (void)_updateCheckImageView;
- (void)_updateContentViewControllerContainerViewConstraints;
- (void)_updateDescriptiveText;
- (void)_updateHavingDescriptiveLabelConstraints;
- (void)_updateImageMargins;
- (void)_updateImageView;
- (void)_updateImageViewAttributes;
- (void)_updateLabelAttributes;
- (void)_updateLabelContainerConstraints;
- (void)_updateMinimumHeightAndDesiredWidthConstraints;
- (void)_updateStyle;
- (void)_updateTextAlignmentForHavingDescriptiveText:(BOOL)text titleTextAlignment:(int64_t)alignment;
- (void)applyMetrics:(id)metrics;
- (void)dealloc;
- (void)setAction:(id)action;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setVisualStyle:(id)style;
- (void)updateSizeUsingAXEnforcedWidth:(double)width;
@end

@implementation _UIAlertControllerActionView

- (_UIAlertControllerActionView)initWithCoder:(id)coder
{
  [(UIResponder *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_UIAlertControllerActionView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = _UIAlertControllerActionView;
  v3 = [(UIView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UIView);
    labelContainerView = v3->_labelContainerView;
    v3->_labelContainerView = v4;

    [(UIView *)v3->_labelContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_labelContainerView setUserInteractionEnabled:0];
    v6 = objc_alloc_init(UILabel);
    label = v3->_label;
    v3->_label = v6;

    [(UIView *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = v3->_label;
    v9 = +[UIColor clearColor];
    [(UIView *)v8 setBackgroundColor:v9];

    [(UILabel *)v3->_label _setTextColorFollowsTintColor:1];
    if (_UISolariumEnabled())
    {
      [(UIView *)v3->_label _setShouldAdaptToMaterials:0];
    }

    [(UIView *)v3 addSubview:v3->_labelContainerView];
    [(UIView *)v3->_labelContainerView addSubview:v3->_label];
    [(UIView *)v3 setExclusiveTouch:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__contentSizeChanged name:@"UIContentSizeCategoryDidChangeNotification" object:0];

    contentViewControllerConstraints = v3->_contentViewControllerConstraints;
    v3->_contentViewControllerConstraints = MEMORY[0x1E695E0F0];

    [(_UIAlertControllerActionView *)v3 _buildConstraints];
    [(_UIAlertControllerActionView *)v3 _updateLabelAttributes];
    [(UIView *)v3 setPreservesSuperviewLayoutMargins:0];
    [(UIView *)v3 setFocusEffect:0];
  }

  return v3;
}

- (NSString)description
{
  [(UIView *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = MEMORY[0x1E696AEC0];
  v12 = objc_opt_class();
  v13 = [(UIAlertAction *)self->_action description];
  v14 = [v11 stringWithFormat:@"<%@: %p frame = (%g %g; %g %g); Action = %@>", v12, self, v4, v6, v8, v10, v13];;

  return v14;
}

- (int64_t)focusItemDeferralMode
{
  alertController = [(_UIAlertControllerActionView *)self alertController];
  v3 = [alertController _resolvedStyle] != 1;

  return v3;
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  _representer = [(UIAlertAction *)self->_action _representer];

  if (_representer == self)
  {
    [(UIAlertAction *)self->_action _setRepresenter:0];
  }

  objc_autoreleasePoolPop(v3);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIContentSizeCategoryDidChangeNotification" object:0];

  v6.receiver = self;
  v6.super_class = _UIAlertControllerActionView;
  [(UIView *)&v6 dealloc];
}

- (void)_buildConstraints
{
  v68[2] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  [(_UIAlertControllerActionView *)self _buildNotHavingDescriptiveLabelConstraints];
  leadingAnchor = [(UIView *)self->_labelContainerView leadingAnchor];
  leadingAnchor2 = [(UIView *)self leadingAnchor];
  v6 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  labelContainerLeadingConstraint = self->_labelContainerLeadingConstraint;
  self->_labelContainerLeadingConstraint = v6;

  trailingAnchor = [(UIView *)self->_labelContainerView trailingAnchor];
  trailingAnchor2 = [(UIView *)self trailingAnchor];
  v10 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  labelContainerTrailingConstraint = self->_labelContainerTrailingConstraint;
  self->_labelContainerTrailingConstraint = v10;

  LODWORD(v12) = 1148829696;
  [(NSLayoutConstraint *)self->_labelContainerLeadingConstraint setPriority:v12];
  LODWORD(v13) = 1148829696;
  [(NSLayoutConstraint *)self->_labelContainerTrailingConstraint setPriority:v13];
  [array addObject:self->_labelContainerLeadingConstraint];
  [array addObject:self->_labelContainerTrailingConstraint];
  leadingAnchor3 = [(UIView *)self->_labelContainerView leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_label leadingAnchor];
  v16 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];

  trailingAnchor3 = [(UIView *)self->_labelContainerView trailingAnchor];
  trailingAnchor4 = [(UIView *)self->_label trailingAnchor];
  v19 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];

  v67 = v16;
  LODWORD(v20) = 1140457472;
  [v16 setPriority:v20];
  LODWORD(v21) = 1140457472;
  [v19 setPriority:v21];
  [array addObject:v16];
  v22 = array;
  [array addObject:v19];
  centerXAnchor = [(UIView *)self->_labelContainerView centerXAnchor];
  centerXAnchor2 = [(UIView *)self centerXAnchor];
  v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [(_UIAlertControllerActionView *)self setLabelContainerCenterXConstraint:v25];

  labelContainerCenterXConstraint = [(_UIAlertControllerActionView *)self labelContainerCenterXConstraint];
  LODWORD(v27) = 1132068864;
  [labelContainerCenterXConstraint setPriority:v27];

  centerYAnchor = [(UIView *)self->_labelContainerView centerYAnchor];
  centerYAnchor2 = [(UIView *)self centerYAnchor];
  v66 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  heightAnchor = [(UIView *)self->_labelContainerView heightAnchor];
  heightAnchor2 = [(UIView *)self heightAnchor];
  v65 = [heightAnchor constraintEqualToAnchor:heightAnchor2];

  labelContainerCenterXConstraint2 = [(_UIAlertControllerActionView *)self labelContainerCenterXConstraint];
  v33 = v22;
  [v22 addObject:labelContainerCenterXConstraint2];

  [v22 addObject:v66];
  [v22 addObject:v65];
  leadingAnchor5 = [(UIView *)self->_labelContainerView leadingAnchor];
  leadingAnchor6 = [(UIView *)self leadingAnchor];
  v36 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [(_UIAlertControllerActionView *)self setLabelContainerLeadingPinConstraint:v36];

  labelContainerLeadingPinConstraint = [(_UIAlertControllerActionView *)self labelContainerLeadingPinConstraint];
  LODWORD(v38) = 1132068864;
  [labelContainerLeadingPinConstraint setPriority:v38];

  trailingAnchor5 = [(UIView *)self->_labelContainerView trailingAnchor];
  trailingAnchor6 = [(UIView *)self trailingAnchor];
  v41 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [(_UIAlertControllerActionView *)self setLabelContainerTrailingPinConstraint:v41];

  labelContainerTrailingPinConstraint = [(_UIAlertControllerActionView *)self labelContainerTrailingPinConstraint];
  LODWORD(v43) = 1132068864;
  [labelContainerTrailingPinConstraint setPriority:v43];

  trailingAnchor7 = [(UIView *)self->_label trailingAnchor];
  trailingAnchor8 = [(UIView *)self->_labelContainerView trailingAnchor];
  v46 = [trailingAnchor7 constraintLessThanOrEqualToAnchor:trailingAnchor8];

  [v22 addObject:v46];
  centerYAnchor3 = [(UIView *)self->_label centerYAnchor];
  centerYAnchor4 = [(UIView *)self centerYAnchor];
  v49 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];

  heightAnchor3 = [(UIView *)self heightAnchor];
  v51 = [heightAnchor3 constraintGreaterThanOrEqualToConstant:0.0];
  minimumHeightConstraint = self->_minimumHeightConstraint;
  self->_minimumHeightConstraint = v51;

  LODWORD(v53) = 1148829696;
  [(NSLayoutConstraint *)self->_minimumHeightConstraint setPriority:v53];
  heightAnchor4 = [(UIView *)self->_labelContainerView heightAnchor];
  v55 = [heightAnchor4 constraintEqualToConstant:0.0];

  topAnchor = [(UIView *)self->_labelContainerView topAnchor];
  topAnchor2 = [(UIView *)self->_label topAnchor];
  v58 = [topAnchor constraintEqualToAnchor:topAnchor2];

  LODWORD(v59) = 1111752704;
  [v55 setPriority:v59];
  LODWORD(v60) = 1111752704;
  [v58 setPriority:v60];
  v68[0] = v55;
  v68[1] = v58;
  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
  [v33 addObjectsFromArray:v61];

  [v33 addObject:v49];
  [v33 addObject:self->_minimumHeightConstraint];
  v62 = MEMORY[0x1E69977A0];
  v64 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v33, v63);
  [v62 activateConstraints:v64];
}

- (void)_buildNotHavingDescriptiveLabelConstraints
{
  array = [MEMORY[0x1E695DF70] array];
  leadingAnchor = [(UIView *)self->_label leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_labelContainerView leadingAnchor];
  v5 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];

  [array addObject:v5];
  v7 = _UIConstraintsBySortingConstraintsForInsertionPerformance(array, v6);
  notHavingDescriptiveLabelConstraints = self->_notHavingDescriptiveLabelConstraints;
  self->_notHavingDescriptiveLabelConstraints = v7;
}

- (void)_buildHavingDescriptiveLabelConstraints
{
  v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
  trailingAnchor = [(UIView *)self->_descriptiveLabel trailingAnchor];
  leadingAnchor = [(UIView *)self->_label leadingAnchor];
  v5 = [trailingAnchor constraintEqualToAnchor:leadingAnchor];
  descriptiveLabelTrailingToLabelLeadingLabelConstraint = self->_descriptiveLabelTrailingToLabelLeadingLabelConstraint;
  self->_descriptiveLabelTrailingToLabelLeadingLabelConstraint = v5;

  [v42 addObject:self->_descriptiveLabelTrailingToLabelLeadingLabelConstraint];
  trailingAnchor2 = [(UIView *)self->_descriptiveLabel trailingAnchor];
  centerXAnchor = [(UIView *)self->_labelContainerView centerXAnchor];
  v9 = [trailingAnchor2 constraintEqualToAnchor:centerXAnchor];
  descriptiveLabelTrailingToContainerCenterConstraint = self->_descriptiveLabelTrailingToContainerCenterConstraint;
  self->_descriptiveLabelTrailingToContainerCenterConstraint = v9;

  LODWORD(v11) = 1132068864;
  [(NSLayoutConstraint *)self->_descriptiveLabelTrailingToContainerCenterConstraint setPriority:v11];
  [v42 addObject:self->_descriptiveLabelTrailingToContainerCenterConstraint];
  leadingAnchor2 = [(UIView *)self->_label leadingAnchor];
  centerXAnchor2 = [(UIView *)self->_labelContainerView centerXAnchor];
  v14 = [leadingAnchor2 constraintEqualToAnchor:centerXAnchor2];
  labelCenterLeadingConstraint = self->_labelCenterLeadingConstraint;
  self->_labelCenterLeadingConstraint = v14;

  LODWORD(v16) = 1132068864;
  [(NSLayoutConstraint *)self->_labelCenterLeadingConstraint setPriority:v16];
  [v42 addObject:self->_labelCenterLeadingConstraint];
  leadingAnchor3 = [(UIView *)self->_descriptiveLabel leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_labelContainerView leadingAnchor];
  v19 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];

  [v42 addObject:v19];
  leadingAnchor5 = [(UIView *)self->_labelContainerView leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_descriptiveLabel leadingAnchor];
  v22 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];

  LODWORD(v23) = 1140457472;
  [v22 setPriority:v23];
  [v42 addObject:v22];
  widthAnchor = [(UIView *)self->_descriptiveLabel widthAnchor];
  [(_UIAlertControllerActionViewMetrics *)self->_metrics descriptiveLabelTextWidth];
  v25 = [widthAnchor constraintEqualToConstant:?];
  descriptiveLabelWidthConstraint = self->_descriptiveLabelWidthConstraint;
  self->_descriptiveLabelWidthConstraint = v25;

  LODWORD(v27) = 1148829696;
  [(NSLayoutConstraint *)self->_descriptiveLabelWidthConstraint setPriority:v27];
  [v42 addObject:self->_descriptiveLabelWidthConstraint];
  widthAnchor2 = [(UIView *)self->_label widthAnchor];
  [(_UIAlertControllerActionViewMetrics *)self->_metrics labelTextWidth];
  v29 = [widthAnchor2 constraintEqualToConstant:?];
  labelWidthConstraint = self->_labelWidthConstraint;
  self->_labelWidthConstraint = v29;

  LODWORD(v31) = 1148829696;
  [(NSLayoutConstraint *)self->_labelWidthConstraint setPriority:v31];
  [v42 addObject:self->_labelWidthConstraint];
  centerYAnchor = [(UIView *)self->_descriptiveLabel centerYAnchor];
  centerYAnchor2 = [(UIView *)self centerYAnchor];
  v34 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  [v42 addObject:v34];
  centerXAnchor3 = [(UIView *)self->_descriptiveLabel centerXAnchor];
  centerXAnchor4 = [(UIView *)self centerXAnchor];
  v37 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];

  LODWORD(v38) = 1111752704;
  [v37 setPriority:v38];
  [v42 addObject:v34];
  v40 = _UIConstraintsBySortingConstraintsForInsertionPerformance(v42, v39);
  havingDescriptiveLabelConstraints = self->_havingDescriptiveLabelConstraints;
  self->_havingDescriptiveLabelConstraints = v40;

  [(_UIAlertControllerActionView *)self _updateHavingDescriptiveLabelConstraints];
}

- (void)_prepareConstraintsForHavingDescriptiveText:(BOOL)text
{
  textCopy = text;
  self->_hasDescriptiveText = text;
  [(_UIAlertControllerActionView *)self _updateHavingDescriptiveLabelConstraints];
  v5 = 7;
  if (textCopy)
  {
    v6 = 15;
  }

  else
  {
    v6 = 7;
  }

  v7 = *(&self->super.super.super.isa + OBJC_IVAR____UIAlertControllerActionView__labelContainerView[v6]);
  if (!textCopy)
  {
    v5 = 15;
  }

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = *(&self->super.super.super.isa + OBJC_IVAR____UIAlertControllerActionView__labelContainerView[v5]);
  if (!v9)
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = MEMORY[0x1E69977A0];
  v11 = v9;
  v12 = v8;
  [v10 deactivateConstraints:v11];
  [MEMORY[0x1E69977A0] activateConstraints:v12];
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    highlightedCopy = highlighted;
    self->_highlighted = highlighted;
    _enclosingInterfaceActionRepresentationView = [(UIView *)self _enclosingInterfaceActionRepresentationView];
    [_enclosingInterfaceActionRepresentationView setHighlighted:highlightedCopy];

    [(_UIAlertControllerActionView *)self _recomputeColors];
  }
}

- (void)applyMetrics:(id)metrics
{
  objc_storeStrong(&self->_metrics, metrics);
  metricsCopy = metrics;
  descriptiveLabelWidthConstraint = self->_descriptiveLabelWidthConstraint;
  [metricsCopy descriptiveLabelTextWidth];
  [(NSLayoutConstraint *)descriptiveLabelWidthConstraint setConstant:?];
  labelWidthConstraint = self->_labelWidthConstraint;
  [metricsCopy labelTextWidth];
  [(NSLayoutConstraint *)labelWidthConstraint setConstant:?];
}

- (void)_recomputeColors
{
  if (_UISolariumEnabled())
  {
    _enclosingInterfaceActionRepresentationView = [(UIView *)self _enclosingInterfaceActionRepresentationView];
    [_enclosingInterfaceActionRepresentationView _reloadBackgroundHighlightView];
  }

  [(_UIAlertControllerActionView *)self _updateLabelAttributes];
  [(_UIAlertControllerActionView *)self _updateImageViewAttributes];
  action = [(_UIAlertControllerActionView *)self action];
  if ([action isEnabled])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if ([(UIView *)self tintAdjustmentMode]!= v4)
  {
    [(UIView *)self setTintAdjustmentMode:v4];
  }

  contentViewControllerContainerView = self->_contentViewControllerContainerView;
  tintColor = [(UIView *)self->_label tintColor];
  [(UIView *)contentViewControllerContainerView setTintColor:tintColor];
}

- (void)_updateImageViewAttributes
{
  visualStyle = [(_UIAlertControllerActionView *)self visualStyle];
  imageView = self->_imageView;
  _interfaceActionViewState = [(_UIAlertControllerActionView *)self _interfaceActionViewState];
  [visualStyle configureAttributesForImageView:imageView imageProperty:0x1EFB16430 actionViewState:_interfaceActionViewState];

  checkView = self->_checkView;
  _interfaceActionViewState2 = [(_UIAlertControllerActionView *)self _interfaceActionViewState];
  [visualStyle configureAttributesForImageView:checkView imageProperty:0x1EFB16470 actionViewState:_interfaceActionViewState2];
}

- (void)_updateLabelAttributes
{
  _descriptiveText = [(UIAlertAction *)self->_action _descriptiveText];
  v4 = [_descriptiveText length];

  if (v4)
  {
    descriptiveLabel = self->_descriptiveLabel;
  }

  else
  {
    descriptiveLabel = 0;
  }

  v6 = descriptiveLabel;
  visualStyle = [(_UIAlertControllerActionView *)self visualStyle];
  label = self->_label;
  _interfaceActionViewState = [(_UIAlertControllerActionView *)self _interfaceActionViewState];
  [visualStyle configureAttributesForTitleLabel:label classificationLabel:v6 actionViewState:_interfaceActionViewState];
}

- (void)_loadDescriptiveLabel
{
  v3 = objc_alloc_init(UILabel);
  descriptiveLabel = self->_descriptiveLabel;
  self->_descriptiveLabel = v3;

  [(UIView *)self->_descriptiveLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = self->_descriptiveLabel;
  v6 = +[UIColor clearColor];
  [(UIView *)v5 setBackgroundColor:v6];

  [(UILabel *)self->_descriptiveLabel _setTextColorFollowsTintColor:1];
  [(_UIAlertControllerActionView *)self _updateTextAlignmentForHavingDescriptiveText:self->_hasDescriptiveText titleTextAlignment:[(UIAlertAction *)self->_action _titleTextAlignment]];
  [(_UIAlertControllerActionView *)self _updateLabelAttributes];
  [(_UIAlertControllerActionView *)self _recomputeColors];
  [(UIView *)self->_labelContainerView addSubview:self->_descriptiveLabel];

  [(_UIAlertControllerActionView *)self _buildHavingDescriptiveLabelConstraints];
}

- (void)_updateDescriptiveText
{
  action = [(_UIAlertControllerActionView *)self action];
  _descriptiveText = [action _descriptiveText];
  if ([_descriptiveText length] && !self->_descriptiveLabel)
  {
    [(_UIAlertControllerActionView *)self _loadDescriptiveLabel];
  }

  descriptiveLabel = self->_descriptiveLabel;
  _descriptiveText2 = [action _descriptiveText];
  [(UILabel *)descriptiveLabel setText:_descriptiveText2];
}

- (void)_buildImageViewConstraints
{
  array = [MEMORY[0x1E695DF70] array];
  leadingAnchor = [(UIView *)self->_imageView leadingAnchor];
  leadingAnchor2 = [(UIView *)self leadingAnchor];
  v5 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  marginToImageConstraint = self->_marginToImageConstraint;
  self->_marginToImageConstraint = v5;

  [array addObject:self->_marginToImageConstraint];
  topAnchor = [(UIView *)self->_imageView topAnchor];
  topAnchor2 = [(UIView *)self topAnchor];
  v9 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  imageViewTopConstraint = self->_imageViewTopConstraint;
  self->_imageViewTopConstraint = v9;

  bottomAnchor = [(UIView *)self->_imageView bottomAnchor];
  bottomAnchor2 = [(UIView *)self bottomAnchor];
  v13 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  imageViewBottomConstraint = self->_imageViewBottomConstraint;
  self->_imageViewBottomConstraint = v13;

  [(_UIAlertControllerActionView *)self _prepareConstraintsForImage:0];
  [array addObject:self->_imageViewBaselineOrCenterYConstraint];
  [array addObject:self->_imageViewTopConstraint];
  [array addObject:self->_imageViewBottomConstraint];
  widthAnchor = [(UIView *)self->_imageView widthAnchor];
  v16 = [widthAnchor constraintEqualToConstant:0.0];

  LODWORD(v17) = 1111752704;
  [v16 setPriority:v17];
  heightAnchor = [(UIView *)self->_imageView heightAnchor];
  v19 = [heightAnchor constraintEqualToConstant:0.0];

  LODWORD(v20) = 1111752704;
  [v19 setPriority:v20];
  [array addObject:v16];
  [array addObject:v19];
  [(_UIAlertControllerActionView *)self _updateImageMargins];
  v21 = MEMORY[0x1E69977A0];
  v23 = _UIConstraintsBySortingConstraintsForInsertionPerformance(array, v22);
  [v21 activateConstraints:v23];
}

- (void)_prepareConstraintsForImage:(id)image
{
  imageCopy = image;
  v16 = imageCopy;
  if (imageCopy && ![imageCopy hasBaseline])
  {
    p_imageViewBaselineOrCenterYConstraint = &self->_imageViewBaselineOrCenterYConstraint;
    imageViewBaselineOrCenterYConstraint = self->_imageViewBaselineOrCenterYConstraint;
    if (!imageViewBaselineOrCenterYConstraint)
    {
      goto LABEL_12;
    }

    if ([(NSLayoutConstraint *)imageViewBaselineOrCenterYConstraint firstAttribute]== NSLayoutAttributeLastBaseline)
    {
      [(NSLayoutConstraint *)*p_imageViewBaselineOrCenterYConstraint setActive:0];
      v12 = *p_imageViewBaselineOrCenterYConstraint;
      *p_imageViewBaselineOrCenterYConstraint = 0;
    }

    v8 = v16;
    if (!*p_imageViewBaselineOrCenterYConstraint)
    {
LABEL_12:
      centerYAnchor = [(UIView *)self->_imageView centerYAnchor];
      centerYAnchor2 = [(UIView *)self centerYAnchor];
      goto LABEL_13;
    }
  }

  else
  {
    p_imageViewBaselineOrCenterYConstraint = &self->_imageViewBaselineOrCenterYConstraint;
    v6 = self->_imageViewBaselineOrCenterYConstraint;
    if (!v6)
    {
      goto LABEL_7;
    }

    if ([(NSLayoutConstraint *)v6 firstAttribute]== NSLayoutAttributeCenterY)
    {
      [(NSLayoutConstraint *)*p_imageViewBaselineOrCenterYConstraint setActive:0];
      v7 = *p_imageViewBaselineOrCenterYConstraint;
      *p_imageViewBaselineOrCenterYConstraint = 0;
    }

    v8 = v16;
    if (!*p_imageViewBaselineOrCenterYConstraint)
    {
LABEL_7:
      centerYAnchor = [(UIView *)self->_imageView lastBaselineAnchor];
      centerYAnchor2 = [(UIView *)self->_label lastBaselineAnchor];
LABEL_13:
      v13 = centerYAnchor2;
      v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v15 = *p_imageViewBaselineOrCenterYConstraint;
      *p_imageViewBaselineOrCenterYConstraint = v14;

      [(NSLayoutConstraint *)*p_imageViewBaselineOrCenterYConstraint setActive:1];
      v8 = v16;
    }
  }
}

- (void)_loadImageView
{
  v3 = objc_alloc_init(UIImageView);
  imageView = self->_imageView;
  self->_imageView = v3;

  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_imageView _setDefaultRenderingMode:2];
  [(_UIAlertControllerActionView *)self _recomputeColors];
  [(UIView *)self addSubview:self->_imageView];

  [(_UIAlertControllerActionView *)self _buildImageViewConstraints];
}

- (void)_updateImageView
{
  image = [(UIAlertAction *)self->_action image];
  v4 = image;
  if (image && !self->_imageView)
  {
    [(_UIAlertControllerActionView *)self _loadImageView];
    image = v4;
  }

  [(UIImageView *)self->_imageView setImage:image];
  [(_UIAlertControllerActionView *)self _prepareConstraintsForImage:v4];
}

- (void)_buildCheckViewConstraints
{
  array = [MEMORY[0x1E695DF70] array];
  trailingAnchor = [(UIView *)self->_checkView trailingAnchor];
  trailingAnchor2 = [(UIView *)self trailingAnchor];
  v5 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  checkToMarginConstraint = self->_checkToMarginConstraint;
  self->_checkToMarginConstraint = v5;

  [array addObject:self->_checkToMarginConstraint];
  lastBaselineAnchor = [(UIView *)self->_checkView lastBaselineAnchor];
  lastBaselineAnchor2 = [(UIView *)self->_label lastBaselineAnchor];
  v9 = [lastBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2];

  [array addObject:v9];
  [(_UIAlertControllerActionView *)self _updateImageMargins];
  [MEMORY[0x1E69977A0] activateConstraints:array];
}

- (void)_loadCheckView
{
  v3 = objc_alloc_init(UIImageView);
  checkView = self->_checkView;
  self->_checkView = v3;

  [(UIImageView *)self->_checkView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_checkView _setDefaultRenderingMode:2];
  [(UIImageView *)self->_checkView setHidden:1];
  v5 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleBody"];
  v6 = [UIImage systemImageNamed:@"checkmark" withConfiguration:v5];

  [(UIImageView *)self->_checkView setImage:v6];
  [(_UIAlertControllerActionView *)self _recomputeColors];
  [(UIView *)self addSubview:self->_checkView];
  [(_UIAlertControllerActionView *)self _buildCheckViewConstraints];
}

- (void)_updateCheckImageView
{
  action = [(_UIAlertControllerActionView *)self action];
  _isChecked = [action _isChecked];

  if (_isChecked && !self->_checkView)
  {
    [(_UIAlertControllerActionView *)self _loadCheckView];
  }

  [(UIImageView *)self->_checkView setHidden:_isChecked ^ 1u];

  [(_UIAlertControllerActionView *)self _updateLabelContainerConstraints];
}

- (void)_buildContentViewControllerContainerConstraints
{
  array = [MEMORY[0x1E695DF70] array];
  leadingAnchor = [(UIView *)self->_contentViewControllerContainerView leadingAnchor];
  leadingAnchor2 = [(UIView *)self leadingAnchor];
  v5 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v5];

  topAnchor = [(UIView *)self->_contentViewControllerContainerView topAnchor];
  topAnchor2 = [(UIView *)self topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v8];

  widthAnchor = [(UIView *)self->_contentViewControllerContainerView widthAnchor];
  widthAnchor2 = [(UIView *)self widthAnchor];
  v11 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [array addObject:v11];

  heightAnchor = [(UIView *)self->_contentViewControllerContainerView heightAnchor];
  heightAnchor2 = [(UIView *)self heightAnchor];
  v14 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [array addObject:v14];

  v16 = _UIConstraintsBySortingConstraintsForInsertionPerformance(array, v15);
  contentViewControllerConstraints = self->_contentViewControllerConstraints;
  self->_contentViewControllerConstraints = v16;
}

- (void)_loadContentViewControllerView
{
  [(_UIAlertControllerActionView *)self _loadContentViewControllerContainerViewIfNecessary];
  action = [(_UIAlertControllerActionView *)self action];
  _contentViewController = [action _contentViewController];
  view = [_contentViewController view];

  [view setPreservesSuperviewLayoutMargins:1];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [MEMORY[0x1E69977A0] activateConstraints:self->_contentViewControllerConstraints];
  [(UIAlertAction *)self->_action _willAddContentViewController];
  [(UIView *)self->_contentViewControllerContainerView addSubview:view];
  leadingAnchor = [(UIView *)self leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v7 setActive:1];

  trailingAnchor = [(UIView *)self trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v10 setActive:1];

  topAnchor = [(UIView *)self topAnchor];
  topAnchor2 = [view topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v13 setActive:1];

  bottomAnchor = [(UIView *)self bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v16 setActive:1];

  [(UIAlertAction *)self->_action _didAddContentViewController];
}

- (void)_loadContentViewControllerContainerViewIfNecessary
{
  if (!self->_contentViewControllerContainerView)
  {
    v3 = [UIView alloc];
    [(UIView *)self bounds];
    v4 = [(UIView *)v3 initWithFrame:?];
    contentViewControllerContainerView = self->_contentViewControllerContainerView;
    self->_contentViewControllerContainerView = v4;

    [(UIView *)self->_contentViewControllerContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_contentViewControllerContainerView setClipsToBounds:1];
    v6 = self->_contentViewControllerContainerView;
    visualStyle = [(_UIAlertControllerActionView *)self visualStyle];
    [visualStyle contentHorizontalMargin];
    v9 = v8;
    visualStyle2 = [(_UIAlertControllerActionView *)self visualStyle];
    [visualStyle2 contentHorizontalMargin];
    [(UIView *)v6 setLayoutMargins:0.0, v9, 0.0, v11];

    [(_UIAlertControllerActionView *)self _recomputeColors];
    [(UIView *)self addSubview:self->_contentViewControllerContainerView];

    [(_UIAlertControllerActionView *)self _buildContentViewControllerContainerConstraints];
  }
}

- (void)_removeContentViewControllerContainerViewSubviews
{
  [MEMORY[0x1E69977A0] deactivateConstraints:self->_contentViewControllerConstraints];
  subviews = [(UIView *)self->_contentViewControllerContainerView subviews];
  [subviews makeObjectsPerformSelector:sel_removeFromSuperview];
}

- (void)updateSizeUsingAXEnforcedWidth:(double)width
{
  if (self->_axEnforcedWidth != width)
  {
    self->_axEnforcedWidth = width;
    [(_UIAlertControllerActionView *)self _updateMinimumHeightAndDesiredWidthConstraints];
  }
}

- (void)_updateMinimumHeightAndDesiredWidthConstraints
{
  visualStyle = [(_UIAlertControllerActionView *)self visualStyle];
  [visualStyle minimumActionContentSize];
  v5 = v4;

  if ([(UILabel *)self->_label numberOfLines]|| (axEnforcedWidth = self->_axEnforcedWidth, axEnforcedWidth <= 0.0))
  {
    [(NSLayoutConstraint *)self->_axLabelContainerWidthConstraint setActive:0];
  }

  else
  {
    [(NSLayoutConstraint *)self->_labelContainerLeadingConstraint constant];
    v8 = axEnforcedWidth - v7;
    [(NSLayoutConstraint *)self->_labelContainerTrailingConstraint constant];
    [(UILabel *)self->_label sizeThatFits:v8 + v9, 0.0];
    v11 = v10;
    v13 = v12;
    visualStyle2 = [(_UIAlertControllerActionView *)self visualStyle];
    [visualStyle2 contentVerticalMargin];
    v16 = v13 + v15 + v15;

    if (v5 < v16)
    {
      v5 = v16;
    }

    axLabelContainerWidthConstraint = self->_axLabelContainerWidthConstraint;
    if (!axLabelContainerWidthConstraint)
    {
      widthAnchor = [(UIView *)self->_labelContainerView widthAnchor];
      v19 = [widthAnchor constraintEqualToConstant:v11];
      v20 = self->_axLabelContainerWidthConstraint;
      self->_axLabelContainerWidthConstraint = v19;

      LODWORD(v21) = 1144750080;
      [(NSLayoutConstraint *)self->_axLabelContainerWidthConstraint setPriority:v21];
      [(NSLayoutConstraint *)self->_axLabelContainerWidthConstraint setActive:1];
      axLabelContainerWidthConstraint = self->_axLabelContainerWidthConstraint;
    }

    [(NSLayoutConstraint *)axLabelContainerWidthConstraint setConstant:v11];
  }

  [(NSLayoutConstraint *)self->_minimumHeightConstraint constant];
  if (v5 != v22)
  {
    [(NSLayoutConstraint *)self->_minimumHeightConstraint setConstant:v5];
    _enclosingInterfaceActionRepresentationView = [(UIView *)self _enclosingInterfaceActionRepresentationView];
    [_enclosingInterfaceActionRepresentationView invalidateIntrinsicContentSize];
  }
}

- (void)_updateImageMargins
{
  visualStyle = [(_UIAlertControllerActionView *)self visualStyle];
  [visualStyle actionImageMarginForAction];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(NSLayoutConstraint *)self->_marginToImageConstraint setConstant:v7];
  [(NSLayoutConstraint *)self->_checkToMarginConstraint setConstant:-v11];
  [(NSLayoutConstraint *)self->_imageViewTopConstraint setConstant:v5];
  imageViewBottomConstraint = self->_imageViewBottomConstraint;

  [(NSLayoutConstraint *)imageViewBottomConstraint setConstant:-v9];
}

- (void)_updateTextAlignmentForHavingDescriptiveText:(BOOL)text titleTextAlignment:(int64_t)alignment
{
  alignmentCopy = alignment;
  v6 = &OBJC_IVAR____UIAlertControllerActionView__label;
  if (text)
  {
    if (alignment != 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIAlertControllerActionView.m" lineNumber:683 description:@"Customizing the title text alignment of an alert action is not supported with descriptive text"];
    }

    v7 = [off_1E70ECB88 defaultWritingDirectionForLanguage:0];
    alignmentCopy = 2 * (v7 == 0);
    v6 = &OBJC_IVAR____UIAlertControllerActionView__descriptiveLabel;
    [(UILabel *)self->_label setTextAlignment:2 * (v7 != 0)];
  }

  v8 = *(&self->super.super.super.isa + *v6);

  [v8 setTextAlignment:alignmentCopy];
}

- (void)_updateLabelContainerConstraints
{
  visualStyle = [(_UIAlertControllerActionView *)self visualStyle];
  [visualStyle contentHorizontalMargin];
  v5 = v4;

  visualStyle2 = [(_UIAlertControllerActionView *)self visualStyle];
  [visualStyle2 contentHorizontalMargin];
  v8 = v7;

  visualStyle3 = [(_UIAlertControllerActionView *)self visualStyle];
  [visualStyle3 actionImageMarginForAction];
  v11 = v10;
  v13 = v12;

  image = [(UIAlertAction *)self->_action image];

  v15 = MEMORY[0x1E695F060];
  if (image)
  {
    [(UIView *)self->_imageView systemLayoutSizeFittingSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    v5 = v13 + v5 + v16;
  }

  if ([(UIAlertAction *)self->_action _isChecked])
  {
    [(UIView *)self->_checkView systemLayoutSizeFittingSize:*v15, v15[1]];
    v8 = v11 + v8 + v17;
  }

  _effectiveTitleTextAlignment = [(_UIAlertControllerActionView *)self _effectiveTitleTextAlignment];
  if (!_effectiveTitleTextAlignment)
  {
    labelContainerLeadingPinConstraint = [(_UIAlertControllerActionView *)self labelContainerLeadingPinConstraint];
    [labelContainerLeadingPinConstraint setActive:1];

    labelContainerCenterXConstraint = [(_UIAlertControllerActionView *)self labelContainerCenterXConstraint];
    [labelContainerCenterXConstraint setActive:0];

    labelContainerTrailingPinConstraint = [(_UIAlertControllerActionView *)self labelContainerTrailingPinConstraint];
    goto LABEL_13;
  }

  if (_effectiveTitleTextAlignment == 2)
  {
    labelContainerTrailingPinConstraint2 = [(_UIAlertControllerActionView *)self labelContainerTrailingPinConstraint];
    [labelContainerTrailingPinConstraint2 setActive:1];

    labelContainerCenterXConstraint2 = [(_UIAlertControllerActionView *)self labelContainerCenterXConstraint];
    [labelContainerCenterXConstraint2 setActive:0];

    labelContainerTrailingPinConstraint = [(_UIAlertControllerActionView *)self labelContainerLeadingPinConstraint];
LABEL_13:
    labelContainerTrailingPinConstraint3 = labelContainerTrailingPinConstraint;
    goto LABEL_14;
  }

  if (_effectiveTitleTextAlignment != 1)
  {
    goto LABEL_15;
  }

  if (v5 >= v8)
  {
    v8 = v5;
  }

  labelContainerCenterXConstraint3 = [(_UIAlertControllerActionView *)self labelContainerCenterXConstraint];
  [labelContainerCenterXConstraint3 setActive:1];

  labelContainerLeadingPinConstraint2 = [(_UIAlertControllerActionView *)self labelContainerLeadingPinConstraint];
  [labelContainerLeadingPinConstraint2 setActive:0];

  labelContainerTrailingPinConstraint3 = [(_UIAlertControllerActionView *)self labelContainerTrailingPinConstraint];
  v5 = v8;
LABEL_14:
  [labelContainerTrailingPinConstraint3 setActive:0];

LABEL_15:
  [(NSLayoutConstraint *)self->_labelContainerLeadingConstraint setConstant:v5];
  labelContainerTrailingConstraint = self->_labelContainerTrailingConstraint;

  [(NSLayoutConstraint *)labelContainerTrailingConstraint setConstant:-v8];
}

- (int64_t)_effectiveTitleTextAlignment
{
  result = [(UIAlertAction *)self->_action _titleTextAlignment];
  if (result == 4)
  {
    return 0;
  }

  return result;
}

- (void)_updateHavingDescriptiveLabelConstraints
{
  if (self->_hasDescriptiveText)
  {
    visualStyle = [(_UIAlertControllerActionView *)self visualStyle];
    [visualStyle contentHorizontalMargin];
    v6 = v5;

    [(NSLayoutConstraint *)self->_descriptiveLabelTrailingToLabelLeadingLabelConstraint setConstant:-v6];
    [(NSLayoutConstraint *)self->_descriptiveLabelTrailingToContainerCenterConstraint setConstant:-(v6 * 0.5)];
    labelCenterLeadingConstraint = self->_labelCenterLeadingConstraint;

    [(NSLayoutConstraint *)labelCenterLeadingConstraint setConstant:v6 * 0.5];
  }
}

- (void)_updateContentViewControllerContainerViewConstraints
{
  contentViewControllerContainerView = self->_contentViewControllerContainerView;
  visualStyle = [(_UIAlertControllerActionView *)self visualStyle];
  [visualStyle contentHorizontalMargin];
  v5 = v4;
  visualStyle2 = [(_UIAlertControllerActionView *)self visualStyle];
  [visualStyle2 contentHorizontalMargin];
  [(UIView *)contentViewControllerContainerView setLayoutMargins:0.0, v5, 0.0, v7];
}

- (void)setAction:(id)action
{
  actionCopy = action;
  [(_UIAlertControllerActionView *)self _removeContentViewControllerContainerViewSubviews];
  _representer = [(UIAlertAction *)self->_action _representer];

  if (_representer == self)
  {
    [(UIAlertAction *)self->_action _setRepresenter:0];
  }

  action = self->_action;
  if (action != actionCopy)
  {
    objc_storeStrong(&self->_action, action);
    action = self->_action;
  }

  [(UIAlertAction *)action _setRepresenter:self];
  v7 = self->_action;
  title = [(UIAlertAction *)v7 title];
  [(_UIAlertControllerActionView *)self _action:v7 changedToTitle:title];

  [(_UIAlertControllerActionView *)self _updateDescriptiveText];
  [(_UIAlertControllerActionView *)self _updateImageView];
  [(_UIAlertControllerActionView *)self _action:self->_action changedToChecked:[(UIAlertAction *)self->_action _isChecked]];
  [(_UIAlertControllerActionView *)self _action:self->_action changedToBePreferred:[(UIAlertAction *)self->_action _isPreferred]];
  v9 = self->_action;
  _imageTintColor = [(UIAlertAction *)v9 _imageTintColor];
  [(_UIAlertControllerActionView *)self _action:v9 updatedImageTintColor:_imageTintColor];

  v11 = self->_action;
  _titleTextColor = [(UIAlertAction *)v11 _titleTextColor];
  [(_UIAlertControllerActionView *)self _action:v11 updatedTitleTextColor:_titleTextColor];

  _descriptiveText = [(UIAlertAction *)self->_action _descriptiveText];
  v14 = [_descriptiveText length] != 0;

  [(_UIAlertControllerActionView *)self _prepareConstraintsForHavingDescriptiveText:v14];
  [(_UIAlertControllerActionView *)self _updateTextAlignmentForHavingDescriptiveText:v14 titleTextAlignment:[(UIAlertAction *)self->_action _titleTextAlignment]];
  [(_UIAlertControllerActionView *)self _updateLabelContainerConstraints];
  action = [(_UIAlertControllerActionView *)self action];
  _contentViewController = [action _contentViewController];

  if (_contentViewController)
  {
    [(_UIAlertControllerActionView *)self _loadContentViewControllerView];
  }

  else
  {
    [(_UIAlertControllerActionView *)self _removeContentViewControllerContainerViewSubviews];
  }
}

- (void)setVisualStyle:(id)style
{
  obj = style;
  WeakRetained = objc_loadWeakRetained(&self->_visualStyle);
  v5 = [WeakRetained isEqual:obj];

  if ((v5 & 1) == 0)
  {
    objc_storeWeak(&self->_visualStyle, obj);
    [(_UIAlertControllerActionView *)self _updateStyle];
  }
}

- (void)_updateStyle
{
  visualStyle = [(_UIAlertControllerActionView *)self visualStyle];

  if (visualStyle)
  {
    [(_UIAlertControllerActionView *)self _recomputeColors];
    [(_UIAlertControllerActionView *)self _updateLabelAttributes];
    [(_UIAlertControllerActionView *)self _updateMinimumHeightAndDesiredWidthConstraints];
    [(_UIAlertControllerActionView *)self _updateImageMargins];
    [(_UIAlertControllerActionView *)self _updateLabelContainerConstraints];
    [(_UIAlertControllerActionView *)self _updateHavingDescriptiveLabelConstraints];
    [(_UIAlertControllerActionView *)self _updateContentViewControllerContainerViewConstraints];

    [(_UIAlertControllerActionView *)self _updateCheckImageView];
  }
}

- (BOOL)hasLayoutHeightConstraintsIdenticalToInterfaceActionCustomView:(id)view
{
  viewCopy = view;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    action = [(_UIAlertControllerActionView *)self action];
    action2 = [viewCopy action];
    _contentViewController = [action _contentViewController];
    if (_contentViewController)
    {
      v6 = 0;
    }

    else
    {
      _contentViewController2 = [action2 _contentViewController];
      v6 = _contentViewController2 == 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasActiveMinimumSizeConstraintsWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  isActive = [(NSLayoutConstraint *)self->_minimumHeightConstraint isActive];
  if (isActive)
  {
    [(NSLayoutConstraint *)self->_minimumHeightConstraint constant];
    LOBYTE(isActive) = v7 == height && width == 0.0;
  }

  return isActive;
}

- (void)_action:(id)_action changedToTitleTextAlignment:(int64_t)alignment
{
  _descriptiveText = [_action _descriptiveText];
  [(_UIAlertControllerActionView *)self _updateTextAlignmentForHavingDescriptiveText:_descriptiveText != 0 titleTextAlignment:[(UIAlertAction *)self->_action _titleTextAlignment]];
}

- (void)_action:(id)_action changedToEnabled:(BOOL)enabled
{
  [(_UIAlertControllerActionView *)self _recomputeColors:_action];
  v5 = [MEMORY[0x1E695DFD8] set];
  [(UIResponder *)self touchesCancelled:v5 withEvent:0];
}

- (UIAlertController)alertController
{
  WeakRetained = objc_loadWeakRetained(&self->_alertController);

  return WeakRetained;
}

- (UIAlertControllerVisualStyle)visualStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_visualStyle);

  return WeakRetained;
}

@end