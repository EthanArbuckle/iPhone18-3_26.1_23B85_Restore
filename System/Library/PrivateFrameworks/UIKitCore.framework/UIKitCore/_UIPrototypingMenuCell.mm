@interface _UIPrototypingMenuCell
- (_UIPrototypingMenuCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_prototypingSettingDidChange;
- (void)setPrototypingSetting:(id)setting;
@end

@implementation _UIPrototypingMenuCell

- (_UIPrototypingMenuCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v37[4] = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = _UIPrototypingMenuCell;
  v4 = [(UITableViewCell *)&v36 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [UIStackView alloc];
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [(UIStackView *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
    stackView = v4->_stackView;
    v4->_stackView = v10;

    [(UIStackView *)v4->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    -[UIStackView setAxis:](v4->_stackView, "setAxis:", [objc_opt_class() _layoutAxis]);
    axis = [(UIStackView *)v4->_stackView axis];
    v13 = v4->_stackView;
    if (axis == 1)
    {
      [(UIStackView *)v13 setAlignment:0];
    }

    else
    {
      [(UIStackView *)v13 setDistribution:0];
      [(UIStackView *)v4->_stackView setSpacing:1.17549435e-38];
      [(UIStackView *)v4->_stackView setLayoutMarginsRelativeArrangement:1];
    }

    contentView = [(UITableViewCell *)v4 contentView];
    [contentView addSubview:v4->_stackView];

    v15 = [[UILabel alloc] initWithFrame:v6, v7, v8, v9];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v15;

    [(UILabel *)v4->_titleLabel setText:@"Setting"];
    v17 = [off_1E70ECC18 boldSystemFontOfSize:17.0];
    [(UILabel *)v4->_titleLabel setFont:v17];

    [(UIStackView *)v4->_stackView addArrangedSubview:v4->_titleLabel];
    contentView2 = [(UITableViewCell *)v4 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];

    v30 = MEMORY[0x1E695DF70];
    topAnchor = [(UIView *)v4->_stackView topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v33 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v37[0] = v33;
    leadingAnchor = [(UIView *)v4->_stackView leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v37[1] = v29;
    trailingAnchor = [(UIView *)v4->_stackView trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v37[2] = v22;
    bottomAnchor = [(UIView *)v4->_stackView bottomAnchor];
    bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v37[3] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
    v27 = [v30 arrayWithArray:v26];

    [MEMORY[0x1E69977A0] activateConstraints:v27];
  }

  return v4;
}

- (void)setPrototypingSetting:(id)setting
{
  settingCopy = setting;
  if (self->_prototypingSetting != settingCopy)
  {
    v6 = settingCopy;
    objc_storeStrong(&self->_prototypingSetting, setting);
    [(_UIPrototypingMenuCell *)self _prototypingSettingDidChange];
    settingCopy = v6;
  }
}

- (void)_prototypingSettingDidChange
{
  name = [(_UIPrototypingValue *)self->_prototypingSetting name];
  titleLabel = [(_UIPrototypingMenuCell *)self titleLabel];
  [titleLabel setText:name];
}

@end