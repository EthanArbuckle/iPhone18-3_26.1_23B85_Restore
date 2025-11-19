@interface PXContextualMemoriesSettingsValueTableViewCell
- (PXContextualMemoriesSettingsValueTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIButton)resetButton;
- (UILabel)valueLabel;
- (UIView)containerView;
- (void)_didPressReset:(id)a3;
- (void)_setUpConstraints;
- (void)layoutMarginsDidChange;
@end

@implementation PXContextualMemoriesSettingsValueTableViewCell

- (void)layoutMarginsDidChange
{
  v15.receiver = self;
  v15.super_class = PXContextualMemoriesSettingsValueTableViewCell;
  [(PXContextualMemoriesSettingsValueTableViewCell *)&v15 layoutMarginsDidChange];
  [(PXContextualMemoriesSettingsValueTableViewCell *)self layoutMargins];
  v4 = v3;
  v5 = [(PXContextualMemoriesSettingsValueTableViewCell *)self topLayoutMarginConstraint];
  [v5 setConstant:v4];

  [(PXContextualMemoriesSettingsValueTableViewCell *)self layoutMargins];
  v7 = v6;
  v8 = [(PXContextualMemoriesSettingsValueTableViewCell *)self bottomLayoutMarginConstraint];
  [v8 setConstant:v7];

  [(PXContextualMemoriesSettingsValueTableViewCell *)self layoutMargins];
  v10 = v9;
  v11 = [(PXContextualMemoriesSettingsValueTableViewCell *)self leftLayoutMarginConstraint];
  [v11 setConstant:v10];

  [(PXContextualMemoriesSettingsValueTableViewCell *)self layoutMargins];
  v13 = v12;
  v14 = [(PXContextualMemoriesSettingsValueTableViewCell *)self rightLayoutMarginConstraint];
  [v14 setConstant:v13];
}

- (UIView)containerView
{
  containerView = self->_containerView;
  if (!containerView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_containerView;
    self->_containerView = v5;

    [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(PXContextualMemoriesSettingsValueTableViewCell *)self contentView];
    v8 = self->_containerView;
    v9 = [(PXContextualMemoriesSettingsValueTableViewCell *)self textLabel];
    [v7 insertSubview:v8 aboveSubview:v9];

    containerView = self->_containerView;
  }

  return containerView;
}

- (UILabel)valueLabel
{
  valueLabel = self->_valueLabel;
  if (!valueLabel)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_valueLabel;
    self->_valueLabel = v5;

    [(UILabel *)self->_valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
    [v7 addSubview:self->_valueLabel];

    [(UILabel *)self->_valueLabel setNumberOfLines:0];
    valueLabel = self->_valueLabel;
  }

  return valueLabel;
}

- (UIButton)resetButton
{
  resetButton = self->_resetButton;
  if (!resetButton)
  {
    v4 = [MEMORY[0x1E69DC738] buttonWithType:1];
    v5 = self->_resetButton;
    self->_resetButton = v4;

    [(UIButton *)self->_resetButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
    [v6 addSubview:self->_resetButton];

    v7 = self->_resetButton;
    v8 = [MEMORY[0x1E696AAE8] mainBundle];
    v9 = [v8 localizedStringForKey:@"Reset" value:&stru_1F1741150 table:0];
    [(UIButton *)v7 setTitle:v9 forState:0];

    [(UIButton *)self->_resetButton addTarget:self action:sel__didPressReset_ forControlEvents:64];
    resetButton = self->_resetButton;
  }

  return resetButton;
}

- (void)_didPressReset:(id)a3
{
  resetHandler = self->_resetHandler;
  if (resetHandler)
  {
    resetHandler[2](resetHandler, self);
  }
}

- (void)_setUpConstraints
{
  v59[3] = *MEMORY[0x1E69E9840];
  v58[0] = @"label";
  v3 = [(PXContextualMemoriesSettingsValueTableViewCell *)self valueLabel];
  v59[0] = v3;
  v58[1] = @"reset";
  v4 = [(PXContextualMemoriesSettingsValueTableViewCell *)self resetButton];
  v59[1] = v4;
  v58[2] = @"containerView";
  v5 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  v59[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:3];

  v7 = [(PXContextualMemoriesSettingsValueTableViewCell *)self contentView];
  v8 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[containerView]|" options:0 metrics:0 views:v6];
  [v7 addConstraints:v8];

  v9 = [(PXContextualMemoriesSettingsValueTableViewCell *)self contentView];
  v10 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-4-[containerView]-4-|" options:0 metrics:0 views:v6];
  [v9 addConstraints:v10];

  v11 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  v12 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:[label]-(>=4)-[reset]" options:0 metrics:0 views:v6];
  [v11 addConstraints:v12];

  v13 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  v14 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  v15 = [v14 centerYAnchor];
  v16 = [(PXContextualMemoriesSettingsValueTableViewCell *)self resetButton];
  v17 = [v16 centerYAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  [v13 addConstraint:v18];

  v19 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  v20 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  v21 = [v20 centerYAnchor];
  v22 = [(PXContextualMemoriesSettingsValueTableViewCell *)self valueLabel];
  v23 = [v22 centerYAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  [v19 addConstraint:v24];

  v25 = [(PXContextualMemoriesSettingsValueTableViewCell *)self valueLabel];
  v26 = [v25 topAnchor];
  v27 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  v28 = [v27 topAnchor];
  [(PXContextualMemoriesSettingsValueTableViewCell *)self layoutMargins];
  v29 = [v26 constraintGreaterThanOrEqualToAnchor:v28 constant:?];
  [(PXContextualMemoriesSettingsValueTableViewCell *)self setTopLayoutMarginConstraint:v29];

  v30 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  v31 = [v30 bottomAnchor];
  v32 = [(PXContextualMemoriesSettingsValueTableViewCell *)self valueLabel];
  v33 = [v32 bottomAnchor];
  [(PXContextualMemoriesSettingsValueTableViewCell *)self layoutMargins];
  v35 = [v31 constraintGreaterThanOrEqualToAnchor:v33 constant:v34];
  [(PXContextualMemoriesSettingsValueTableViewCell *)self setBottomLayoutMarginConstraint:v35];

  v36 = [(PXContextualMemoriesSettingsValueTableViewCell *)self valueLabel];
  v37 = [v36 leadingAnchor];
  v38 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  v39 = [v38 leadingAnchor];
  [(PXContextualMemoriesSettingsValueTableViewCell *)self layoutMargins];
  v41 = [v37 constraintEqualToAnchor:v39 constant:v40];
  [(PXContextualMemoriesSettingsValueTableViewCell *)self setLeftLayoutMarginConstraint:v41];

  v42 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  v43 = [v42 trailingAnchor];
  v44 = [(PXContextualMemoriesSettingsValueTableViewCell *)self resetButton];
  v45 = [v44 trailingAnchor];
  [(PXContextualMemoriesSettingsValueTableViewCell *)self layoutMargins];
  v47 = [v43 constraintEqualToAnchor:v45 constant:v46];
  [(PXContextualMemoriesSettingsValueTableViewCell *)self setRightLayoutMarginConstraint:v47];

  v48 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  v49 = [(PXContextualMemoriesSettingsValueTableViewCell *)self topLayoutMarginConstraint];
  [v48 addConstraint:v49];

  v50 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  v51 = [(PXContextualMemoriesSettingsValueTableViewCell *)self bottomLayoutMarginConstraint];
  [v50 addConstraint:v51];

  v52 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  v53 = [(PXContextualMemoriesSettingsValueTableViewCell *)self leftLayoutMarginConstraint];
  [v52 addConstraint:v53];

  v54 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  v55 = [(PXContextualMemoriesSettingsValueTableViewCell *)self rightLayoutMarginConstraint];
  [v54 addConstraint:v55];

  v56 = [(PXContextualMemoriesSettingsValueTableViewCell *)self resetButton];
  LODWORD(v57) = 1144766464;
  [v56 setContentHuggingPriority:0 forAxis:v57];
}

- (PXContextualMemoriesSettingsValueTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = PXContextualMemoriesSettingsValueTableViewCell;
  v4 = [(PXContextualMemoriesSettingsValueTableViewCell *)&v7 initWithStyle:0 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(PXContextualMemoriesSettingsValueTableViewCell *)v4 _setUpConstraints];
  }

  return v5;
}

@end