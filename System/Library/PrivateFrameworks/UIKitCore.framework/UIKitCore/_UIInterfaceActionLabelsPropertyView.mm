@interface _UIInterfaceActionLabelsPropertyView
- (_UIInterfaceActionLabelsPropertyView)initWithAction:(id)a3;
- (id)_classificationLabelIfVisible;
- (id)_interfaceActionViewState;
- (id)_newLabel;
- (void)_applyVisualStyle;
- (void)_applyVisualStyleToLabels;
- (void)_reloadContentClassificationLabelDisplayProperties;
- (void)_reloadContentForTitleDisplayProperties;
- (void)dealloc;
- (void)interfaceAction:(id)a3 reloadDisplayedContentActionProperties:(id)a4;
@end

@implementation _UIInterfaceActionLabelsPropertyView

- (_UIInterfaceActionLabelsPropertyView)initWithAction:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = _UIInterfaceActionLabelsPropertyView;
  v6 = [(UIView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_action, a3);
    [(UIInterfaceAction *)v7->_action _addActionDisplayPropertyObserver:v7];
    [(_UIInterfaceActionLabelsPropertyView *)v7 interfaceAction:v7->_action reloadDisplayedContentActionProperties:0];
    action = v7->_action;
    v9 = [(UIInterfaceAction *)action _visualStyle];
    [(_UIInterfaceActionLabelsPropertyView *)v7 interfaceAction:action reloadDisplayedContentVisualStyle:v9];

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v7 selector:sel__contentSizeCategoryDidChangeNotification_ name:@"UIContentSizeCategoryDidChangeNotification" object:0];
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

- (void)interfaceAction:(id)a3 reloadDisplayedContentActionProperties:(id)a4
{
  v5 = a4;
  [(_UIInterfaceActionLabelsPropertyView *)self _reloadContentForTitleDisplayProperties];
  [(_UIInterfaceActionLabelsPropertyView *)self _reloadContentClassificationLabelDisplayProperties];
  v39 = [(_UIInterfaceActionLabelsPropertyView *)self _visualStyle];
  v6 = [v39 actionPropertiesAffectingLabelStyling];
  v7 = [UIInterfaceAction changedProperties:v5 containsAny:v6];

  if (v7)
  {
    [(_UIInterfaceActionLabelsPropertyView *)self _applyVisualStyleToLabels];
  }

  v8 = [(_UIInterfaceActionLabelsPropertyView *)self _classificationLabelIfVisible];
  titleLabel = v8;
  if (!v8)
  {
    titleLabel = self->_titleLabel;
  }

  v10 = titleLabel;

  v11 = self->_titleLabel;
  v12 = [MEMORY[0x1E695DF70] array];
  v13 = [(UIView *)self heightAnchor];
  v14 = [(UIView *)self->_titleLabel heightAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:4.0];
  [(NSArray *)v12 addObject:v15];

  v16 = [(NSArray *)v12 lastObject];
  LODWORD(v17) = 1148837888;
  [v16 setPriority:v17];

  v18 = [(NSArray *)v12 lastObject];
  [v18 setIdentifier:@"labelsView-heightPlusMargin"];

  v19 = [(UIView *)v10 leadingAnchor];
  v20 = [(UIView *)self leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [(NSArray *)v12 addObject:v21];
  leadingLabelLeadingConstraint = self->_leadingLabelLeadingConstraint;
  self->_leadingLabelLeadingConstraint = v21;

  [(NSLayoutConstraint *)self->_leadingLabelLeadingConstraint setIdentifier:@"labelsView-leadingLabel-leading"];
  v23 = [(UIView *)v10 centerYAnchor];
  v24 = [(UIView *)self centerYAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  [(NSArray *)v12 addObject:v25];
  leadingLabelVerticalPositionConstraint = self->_leadingLabelVerticalPositionConstraint;
  self->_leadingLabelVerticalPositionConstraint = v25;

  v27 = @"labelsView-leadingLabel-verticalPosition";
  [(NSLayoutConstraint *)self->_leadingLabelVerticalPositionConstraint setIdentifier:@"labelsView-leadingLabel-verticalPosition"];
  v28 = [(UIView *)v11 trailingAnchor];
  v29 = [(UIView *)self trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  [(NSArray *)v12 addObject:v30];
  trailingLabelTrailingConstraint = self->_trailingLabelTrailingConstraint;
  self->_trailingLabelTrailingConstraint = v30;

  [(NSLayoutConstraint *)self->_trailingLabelTrailingConstraint setIdentifier:@"labelsView-trailingLabel-trailing"];
  v32 = [(UIView *)v11 centerYAnchor];
  v33 = [(UIView *)self centerYAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
  [(NSArray *)v12 addObject:v34];
  v35 = self->_leadingLabelVerticalPositionConstraint;
  self->_leadingLabelVerticalPositionConstraint = v34;

  [(NSLayoutConstraint *)self->_leadingLabelVerticalPositionConstraint setIdentifier:@"labelsView-leadingLabel-verticalPosition"];
  if (v10 == v11)
  {
    v36 = 0;
  }

  else
  {
    v27 = [(UIView *)v10 trailingAnchor];
    v32 = [(UIView *)v11 leadingAnchor];
    v36 = [(__CFString *)v27 constraintEqualToAnchor:v32];
    [(NSArray *)v12 addObject:v36];
  }

  objc_storeStrong(&self->_interLabelSpacingConstraint, v36);
  if (v10 != v11)
  {
  }

  [(NSLayoutConstraint *)self->_interLabelSpacingConstraint setIdentifier:@"labelsView-inter-label-spacing"];
  [MEMORY[0x1E69977A0] deactivateConstraints:self->_labelConstraints];
  labelConstraints = self->_labelConstraints;
  self->_labelConstraints = v12;
  v38 = v12;

  [MEMORY[0x1E69977A0] activateConstraints:self->_labelConstraints];
}

- (void)_applyVisualStyle
{
  v3 = [(_UIInterfaceActionLabelsPropertyView *)self _visualStyle];
  if (v3)
  {
    v4 = v3;
    [(_UIInterfaceActionLabelsPropertyView *)self _applyVisualStyleToLabels];
    v3 = v4;
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
  v7 = [(_UIInterfaceActionLabelsPropertyView *)self _visualStyle];
  titleLabel = self->_titleLabel;
  v6 = [(_UIInterfaceActionLabelsPropertyView *)self _interfaceActionViewState];
  [v7 configureAttributesForTitleLabel:titleLabel classificationLabel:v4 actionViewState:v6];
}

- (id)_interfaceActionViewState
{
  v3 = [(_UIInterfaceActionLabelsPropertyView *)self action];
  v4 = [UIInterfaceActionViewState viewStateForActionRepresentationViewDescendantView:self action:v3];

  return v4;
}

- (void)_reloadContentForTitleDisplayProperties
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    v4 = [(_UIInterfaceActionLabelsPropertyView *)self _newLabel];
    v5 = self->_titleLabel;
    self->_titleLabel = v4;

    [(UIView *)self->_titleLabel _setLayoutDebuggingIdentifier:@"titleLabel"];
    titleLabel = self->_titleLabel;
  }

  v6 = [(_UIInterfaceActionLabelsPropertyView *)self action];
  v7 = [v6 title];
  [(UILabel *)titleLabel setText:v7];

  v8 = self->_titleLabel;
  v9 = [(_UIInterfaceActionLabelsPropertyView *)self action];
  -[UILabel setTextAlignment:](v8, "setTextAlignment:", [v9 titleAlignment]);
}

- (void)_reloadContentClassificationLabelDisplayProperties
{
  v3 = [(_UIInterfaceActionLabelsPropertyView *)self _classificationLabelIfVisible];

  classificationLabel = self->_classificationLabel;
  if (v3)
  {
    if (!classificationLabel)
    {
      v5 = [(_UIInterfaceActionLabelsPropertyView *)self _newLabel];
      v6 = self->_classificationLabel;
      self->_classificationLabel = v5;

      [(UIView *)self->_titleLabel _setLayoutDebuggingIdentifier:@"classificationLabel"];
      classificationLabel = self->_classificationLabel;
    }

    v7 = [(_UIInterfaceActionLabelsPropertyView *)self action];
    v8 = [v7 classificationTitle];
    [(UILabel *)classificationLabel setText:v8];

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