@interface _UIInterfaceActionLabelsPropertyView
- (_UIInterfaceActionLabelsPropertyView)initWithAction:(id)action;
- (id)_classificationLabelIfVisible;
- (id)_interfaceActionViewState;
- (id)_newLabel;
- (void)_applyVisualStyle;
- (void)_applyVisualStyleToLabels;
- (void)_reloadContentClassificationLabelDisplayProperties;
- (void)_reloadContentForTitleDisplayProperties;
- (void)dealloc;
- (void)interfaceAction:(id)action reloadDisplayedContentActionProperties:(id)properties;
@end

@implementation _UIInterfaceActionLabelsPropertyView

- (_UIInterfaceActionLabelsPropertyView)initWithAction:(id)action
{
  actionCopy = action;
  v12.receiver = self;
  v12.super_class = _UIInterfaceActionLabelsPropertyView;
  v6 = [(UIView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_action, action);
    [(UIInterfaceAction *)v7->_action _addActionDisplayPropertyObserver:v7];
    [(_UIInterfaceActionLabelsPropertyView *)v7 interfaceAction:v7->_action reloadDisplayedContentActionProperties:0];
    action = v7->_action;
    _visualStyle = [(UIInterfaceAction *)action _visualStyle];
    [(_UIInterfaceActionLabelsPropertyView *)v7 interfaceAction:action reloadDisplayedContentVisualStyle:_visualStyle];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__contentSizeCategoryDidChangeNotification_ name:@"UIContentSizeCategoryDidChangeNotification" object:0];
  }

  return v7;
}

- (void)dealloc
{
  [(UIInterfaceAction *)self->_action _removeActionDisplayPropertyObserver:self];
  v3.receiver = self;
  v3.super_class = _UIInterfaceActionLabelsPropertyView;
  [(UIView *)&v3 dealloc];
}

- (void)interfaceAction:(id)action reloadDisplayedContentActionProperties:(id)properties
{
  propertiesCopy = properties;
  [(_UIInterfaceActionLabelsPropertyView *)self _reloadContentForTitleDisplayProperties];
  [(_UIInterfaceActionLabelsPropertyView *)self _reloadContentClassificationLabelDisplayProperties];
  _visualStyle = [(_UIInterfaceActionLabelsPropertyView *)self _visualStyle];
  actionPropertiesAffectingLabelStyling = [_visualStyle actionPropertiesAffectingLabelStyling];
  v7 = [UIInterfaceAction changedProperties:propertiesCopy containsAny:actionPropertiesAffectingLabelStyling];

  if (v7)
  {
    [(_UIInterfaceActionLabelsPropertyView *)self _applyVisualStyleToLabels];
  }

  _classificationLabelIfVisible = [(_UIInterfaceActionLabelsPropertyView *)self _classificationLabelIfVisible];
  titleLabel = _classificationLabelIfVisible;
  if (!_classificationLabelIfVisible)
  {
    titleLabel = self->_titleLabel;
  }

  v10 = titleLabel;

  v11 = self->_titleLabel;
  array = [MEMORY[0x1E695DF70] array];
  heightAnchor = [(UIView *)self heightAnchor];
  heightAnchor2 = [(UIView *)self->_titleLabel heightAnchor];
  v15 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:4.0];
  [(NSArray *)array addObject:v15];

  lastObject = [(NSArray *)array lastObject];
  LODWORD(v17) = 1148837888;
  [lastObject setPriority:v17];

  lastObject2 = [(NSArray *)array lastObject];
  [lastObject2 setIdentifier:@"labelsView-heightPlusMargin"];

  leadingAnchor = [(UIView *)v10 leadingAnchor];
  leadingAnchor2 = [(UIView *)self leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [(NSArray *)array addObject:v21];
  leadingLabelLeadingConstraint = self->_leadingLabelLeadingConstraint;
  self->_leadingLabelLeadingConstraint = v21;

  [(NSLayoutConstraint *)self->_leadingLabelLeadingConstraint setIdentifier:@"labelsView-leadingLabel-leading"];
  centerYAnchor = [(UIView *)v10 centerYAnchor];
  centerYAnchor2 = [(UIView *)self centerYAnchor];
  v25 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [(NSArray *)array addObject:v25];
  leadingLabelVerticalPositionConstraint = self->_leadingLabelVerticalPositionConstraint;
  self->_leadingLabelVerticalPositionConstraint = v25;

  trailingAnchor3 = @"labelsView-leadingLabel-verticalPosition";
  [(NSLayoutConstraint *)self->_leadingLabelVerticalPositionConstraint setIdentifier:@"labelsView-leadingLabel-verticalPosition"];
  trailingAnchor = [(UIView *)v11 trailingAnchor];
  trailingAnchor2 = [(UIView *)self trailingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [(NSArray *)array addObject:v30];
  trailingLabelTrailingConstraint = self->_trailingLabelTrailingConstraint;
  self->_trailingLabelTrailingConstraint = v30;

  [(NSLayoutConstraint *)self->_trailingLabelTrailingConstraint setIdentifier:@"labelsView-trailingLabel-trailing"];
  centerYAnchor3 = [(UIView *)v11 centerYAnchor];
  centerYAnchor4 = [(UIView *)self centerYAnchor];
  v34 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [(NSArray *)array addObject:v34];
  v35 = self->_leadingLabelVerticalPositionConstraint;
  self->_leadingLabelVerticalPositionConstraint = v34;

  [(NSLayoutConstraint *)self->_leadingLabelVerticalPositionConstraint setIdentifier:@"labelsView-leadingLabel-verticalPosition"];
  if (v10 == v11)
  {
    v36 = 0;
  }

  else
  {
    trailingAnchor3 = [(UIView *)v10 trailingAnchor];
    centerYAnchor3 = [(UIView *)v11 leadingAnchor];
    v36 = [(__CFString *)trailingAnchor3 constraintEqualToAnchor:centerYAnchor3];
    [(NSArray *)array addObject:v36];
  }

  objc_storeStrong(&self->_interLabelSpacingConstraint, v36);
  if (v10 != v11)
  {
  }

  [(NSLayoutConstraint *)self->_interLabelSpacingConstraint setIdentifier:@"labelsView-inter-label-spacing"];
  [MEMORY[0x1E69977A0] deactivateConstraints:self->_labelConstraints];
  labelConstraints = self->_labelConstraints;
  self->_labelConstraints = array;
  v38 = array;

  [MEMORY[0x1E69977A0] activateConstraints:self->_labelConstraints];
}

- (void)_applyVisualStyle
{
  _visualStyle = [(_UIInterfaceActionLabelsPropertyView *)self _visualStyle];
  if (_visualStyle)
  {
    v4 = _visualStyle;
    [(_UIInterfaceActionLabelsPropertyView *)self _applyVisualStyleToLabels];
    _visualStyle = v4;
  }
}

- (void)_applyVisualStyleToLabels
{
  if ([(UIView *)self->_classificationLabel isHidden])
  {
    classificationLabel = 0;
  }

  else
  {
    classificationLabel = self->_classificationLabel;
  }

  v4 = classificationLabel;
  _visualStyle = [(_UIInterfaceActionLabelsPropertyView *)self _visualStyle];
  titleLabel = self->_titleLabel;
  _interfaceActionViewState = [(_UIInterfaceActionLabelsPropertyView *)self _interfaceActionViewState];
  [_visualStyle configureAttributesForTitleLabel:titleLabel classificationLabel:v4 actionViewState:_interfaceActionViewState];
}

- (id)_interfaceActionViewState
{
  action = [(_UIInterfaceActionLabelsPropertyView *)self action];
  v4 = [UIInterfaceActionViewState viewStateForActionRepresentationViewDescendantView:self action:action];

  return v4;
}

- (void)_reloadContentForTitleDisplayProperties
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    _newLabel = [(_UIInterfaceActionLabelsPropertyView *)self _newLabel];
    v5 = self->_titleLabel;
    self->_titleLabel = _newLabel;

    [(UIView *)self->_titleLabel _setLayoutDebuggingIdentifier:@"titleLabel"];
    titleLabel = self->_titleLabel;
  }

  action = [(_UIInterfaceActionLabelsPropertyView *)self action];
  title = [action title];
  [(UILabel *)titleLabel setText:title];

  v8 = self->_titleLabel;
  action2 = [(_UIInterfaceActionLabelsPropertyView *)self action];
  -[UILabel setTextAlignment:](v8, "setTextAlignment:", [action2 titleAlignment]);
}

- (void)_reloadContentClassificationLabelDisplayProperties
{
  _classificationLabelIfVisible = [(_UIInterfaceActionLabelsPropertyView *)self _classificationLabelIfVisible];

  classificationLabel = self->_classificationLabel;
  if (_classificationLabelIfVisible)
  {
    if (!classificationLabel)
    {
      _newLabel = [(_UIInterfaceActionLabelsPropertyView *)self _newLabel];
      v6 = self->_classificationLabel;
      self->_classificationLabel = _newLabel;

      [(UIView *)self->_titleLabel _setLayoutDebuggingIdentifier:@"classificationLabel"];
      classificationLabel = self->_classificationLabel;
    }

    action = [(_UIInterfaceActionLabelsPropertyView *)self action];
    classificationTitle = [action classificationTitle];
    [(UILabel *)classificationLabel setText:classificationTitle];

    v9 = self->_classificationLabel;
    v10 = 0;
  }

  else
  {
    v9 = self->_classificationLabel;
    v10 = 1;
  }

  [(UIView *)v9 setHidden:v10];
}

- (id)_classificationLabelIfVisible
{
  classificationLabel = self->_classificationLabel;
  if (classificationLabel)
  {
    if ([(UIView *)classificationLabel isHidden])
    {
      classificationLabel = self->_classificationLabel;
    }

    else
    {
      classificationLabel = 0;
    }
  }

  return classificationLabel;
}

- (id)_newLabel
{
  v3 = [UILabel alloc];
  v4 = [(UILabel *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = +[UIColor clearColor];
  [(UIView *)v4 setBackgroundColor:v5];

  [(UILabel *)v4 setTextAlignment:1];
  LODWORD(v6) = 1148846080;
  [(UIView *)v4 setContentCompressionResistancePriority:0 forAxis:v6];
  [(UIView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self addSubview:v4];
  return v4;
}

@end