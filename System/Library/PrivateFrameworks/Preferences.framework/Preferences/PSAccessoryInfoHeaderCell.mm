@interface PSAccessoryInfoHeaderCell
- (void)commonInit;
@end

@implementation PSAccessoryInfoHeaderCell

- (void)commonInit
{
  v25[4] = *MEMORY[0x1E69E9840];
  specifier = [(PSTableCell *)self specifier];
  userInfo = [specifier userInfo];

  v4 = [[PSAccessoryInfoHeaderView alloc] initWithDevice:userInfo insets:16.0, 16.0, 16.0, 16.0];
  [(PSAccessoryInfoHeaderView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(PSAccessoryInfoHeaderCell *)self contentView];
  [contentView addSubview:v4];

  v16 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(PSAccessoryInfoHeaderView *)v4 leadingAnchor];
  contentView2 = [(PSAccessoryInfoHeaderCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v25[0] = v20;
  trailingAnchor = [(PSAccessoryInfoHeaderView *)v4 trailingAnchor];
  contentView3 = [(PSAccessoryInfoHeaderCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v25[1] = v15;
  topAnchor = [(PSAccessoryInfoHeaderView *)v4 topAnchor];
  contentView4 = [(PSAccessoryInfoHeaderCell *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v25[2] = v9;
  bottomAnchor = [(PSAccessoryInfoHeaderView *)v4 bottomAnchor];
  contentView5 = [(PSAccessoryInfoHeaderCell *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v25[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
  [v16 activateConstraints:v14];
}

@end