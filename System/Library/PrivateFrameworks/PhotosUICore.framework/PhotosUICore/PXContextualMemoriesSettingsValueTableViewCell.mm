@interface PXContextualMemoriesSettingsValueTableViewCell
- (PXContextualMemoriesSettingsValueTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIButton)resetButton;
- (UILabel)valueLabel;
- (UIView)containerView;
- (void)_didPressReset:(id)reset;
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
  topLayoutMarginConstraint = [(PXContextualMemoriesSettingsValueTableViewCell *)self topLayoutMarginConstraint];
  [topLayoutMarginConstraint setConstant:v4];

  [(PXContextualMemoriesSettingsValueTableViewCell *)self layoutMargins];
  v7 = v6;
  bottomLayoutMarginConstraint = [(PXContextualMemoriesSettingsValueTableViewCell *)self bottomLayoutMarginConstraint];
  [bottomLayoutMarginConstraint setConstant:v7];

  [(PXContextualMemoriesSettingsValueTableViewCell *)self layoutMargins];
  v10 = v9;
  leftLayoutMarginConstraint = [(PXContextualMemoriesSettingsValueTableViewCell *)self leftLayoutMarginConstraint];
  [leftLayoutMarginConstraint setConstant:v10];

  [(PXContextualMemoriesSettingsValueTableViewCell *)self layoutMargins];
  v13 = v12;
  rightLayoutMarginConstraint = [(PXContextualMemoriesSettingsValueTableViewCell *)self rightLayoutMarginConstraint];
  [rightLayoutMarginConstraint setConstant:v13];
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
    contentView = [(PXContextualMemoriesSettingsValueTableViewCell *)self contentView];
    v8 = self->_containerView;
    textLabel = [(PXContextualMemoriesSettingsValueTableViewCell *)self textLabel];
    [contentView insertSubview:v8 aboveSubview:textLabel];

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
    containerView = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
    [containerView addSubview:self->_valueLabel];

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
    containerView = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
    [containerView addSubview:self->_resetButton];

    v7 = self->_resetButton;
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v9 = [mainBundle localizedStringForKey:@"Reset" value:&stru_1F1741150 table:0];
    [(UIButton *)v7 setTitle:v9 forState:0];

    [(UIButton *)self->_resetButton addTarget:self action:sel__didPressReset_ forControlEvents:64];
    resetButton = self->_resetButton;
  }

  return resetButton;
}

- (void)_didPressReset:(id)reset
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
  valueLabel = [(PXContextualMemoriesSettingsValueTableViewCell *)self valueLabel];
  v59[0] = valueLabel;
  v58[1] = @"reset";
  resetButton = [(PXContextualMemoriesSettingsValueTableViewCell *)self resetButton];
  v59[1] = resetButton;
  v58[2] = @"containerView";
  containerView = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  v59[2] = containerView;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:3];

  contentView = [(PXContextualMemoriesSettingsValueTableViewCell *)self contentView];
  v8 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[containerView]|" options:0 metrics:0 views:v6];
  [contentView addConstraints:v8];

  contentView2 = [(PXContextualMemoriesSettingsValueTableViewCell *)self contentView];
  v10 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-4-[containerView]-4-|" options:0 metrics:0 views:v6];
  [contentView2 addConstraints:v10];

  containerView2 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  v12 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:[label]-(>=4)-[reset]" options:0 metrics:0 views:v6];
  [containerView2 addConstraints:v12];

  containerView3 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  containerView4 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  centerYAnchor = [containerView4 centerYAnchor];
  resetButton2 = [(PXContextualMemoriesSettingsValueTableViewCell *)self resetButton];
  centerYAnchor2 = [resetButton2 centerYAnchor];
  v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [containerView3 addConstraint:v18];

  containerView5 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  containerView6 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  centerYAnchor3 = [containerView6 centerYAnchor];
  valueLabel2 = [(PXContextualMemoriesSettingsValueTableViewCell *)self valueLabel];
  centerYAnchor4 = [valueLabel2 centerYAnchor];
  v24 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [containerView5 addConstraint:v24];

  valueLabel3 = [(PXContextualMemoriesSettingsValueTableViewCell *)self valueLabel];
  topAnchor = [valueLabel3 topAnchor];
  containerView7 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  topAnchor2 = [containerView7 topAnchor];
  [(PXContextualMemoriesSettingsValueTableViewCell *)self layoutMargins];
  v29 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:?];
  [(PXContextualMemoriesSettingsValueTableViewCell *)self setTopLayoutMarginConstraint:v29];

  containerView8 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  bottomAnchor = [containerView8 bottomAnchor];
  valueLabel4 = [(PXContextualMemoriesSettingsValueTableViewCell *)self valueLabel];
  bottomAnchor2 = [valueLabel4 bottomAnchor];
  [(PXContextualMemoriesSettingsValueTableViewCell *)self layoutMargins];
  v35 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:v34];
  [(PXContextualMemoriesSettingsValueTableViewCell *)self setBottomLayoutMarginConstraint:v35];

  valueLabel5 = [(PXContextualMemoriesSettingsValueTableViewCell *)self valueLabel];
  leadingAnchor = [valueLabel5 leadingAnchor];
  containerView9 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  leadingAnchor2 = [containerView9 leadingAnchor];
  [(PXContextualMemoriesSettingsValueTableViewCell *)self layoutMargins];
  v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v40];
  [(PXContextualMemoriesSettingsValueTableViewCell *)self setLeftLayoutMarginConstraint:v41];

  containerView10 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  trailingAnchor = [containerView10 trailingAnchor];
  resetButton3 = [(PXContextualMemoriesSettingsValueTableViewCell *)self resetButton];
  trailingAnchor2 = [resetButton3 trailingAnchor];
  [(PXContextualMemoriesSettingsValueTableViewCell *)self layoutMargins];
  v47 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v46];
  [(PXContextualMemoriesSettingsValueTableViewCell *)self setRightLayoutMarginConstraint:v47];

  containerView11 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  topLayoutMarginConstraint = [(PXContextualMemoriesSettingsValueTableViewCell *)self topLayoutMarginConstraint];
  [containerView11 addConstraint:topLayoutMarginConstraint];

  containerView12 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  bottomLayoutMarginConstraint = [(PXContextualMemoriesSettingsValueTableViewCell *)self bottomLayoutMarginConstraint];
  [containerView12 addConstraint:bottomLayoutMarginConstraint];

  containerView13 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  leftLayoutMarginConstraint = [(PXContextualMemoriesSettingsValueTableViewCell *)self leftLayoutMarginConstraint];
  [containerView13 addConstraint:leftLayoutMarginConstraint];

  containerView14 = [(PXContextualMemoriesSettingsValueTableViewCell *)self containerView];
  rightLayoutMarginConstraint = [(PXContextualMemoriesSettingsValueTableViewCell *)self rightLayoutMarginConstraint];
  [containerView14 addConstraint:rightLayoutMarginConstraint];

  resetButton4 = [(PXContextualMemoriesSettingsValueTableViewCell *)self resetButton];
  LODWORD(v57) = 1144766464;
  [resetButton4 setContentHuggingPriority:0 forAxis:v57];
}

- (PXContextualMemoriesSettingsValueTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = PXContextualMemoriesSettingsValueTableViewCell;
  v4 = [(PXContextualMemoriesSettingsValueTableViewCell *)&v7 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(PXContextualMemoriesSettingsValueTableViewCell *)v4 _setUpConstraints];
  }

  return v5;
}

@end