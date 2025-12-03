@interface WFTableViewHeaderFooterTextView
- (NSString)text;
- (WFTableViewHeaderFooterTextView)init;
- (WFTableViewHeaderFooterTextView)initWithReuseIdentifier:(id)identifier;
- (void)setHorizontalPadding:(double)padding;
- (void)setText:(id)text;
@end

@implementation WFTableViewHeaderFooterTextView

- (void)setHorizontalPadding:(double)padding
{
  v23[2] = *MEMORY[0x277D85DE8];
  if (self->_horizontalPadding != padding)
  {
    label = [(WFTableViewHeaderFooterTextView *)self label];
    leadingAnchor = [label leadingAnchor];
    contentView = [(WFTableViewHeaderFooterTextView *)self contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:padding];
    v23[0] = v7;
    label2 = [(WFTableViewHeaderFooterTextView *)self label];
    trailingAnchor = [label2 trailingAnchor];
    contentView2 = [(WFTableViewHeaderFooterTextView *)self contentView];
    layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-padding];
    v23[1] = v13;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];

    horizontalConstraints = [(WFTableViewHeaderFooterTextView *)self horizontalConstraints];

    if (horizontalConstraints)
    {
      v15 = MEMORY[0x277CCAAD0];
      horizontalConstraints2 = [(WFTableViewHeaderFooterTextView *)self horizontalConstraints];
      [v15 deactivateConstraints:horizontalConstraints2];
    }

    [MEMORY[0x277CCAAD0] activateConstraints:v20];
    horizontalConstraints3 = [(WFTableViewHeaderFooterTextView *)self horizontalConstraints];
    horizontalConstraints = self->_horizontalConstraints;
    self->_horizontalConstraints = horizontalConstraints3;

    self->_horizontalPadding = padding;
  }
}

- (void)setText:(id)text
{
  textCopy = text;
  label = [(WFTableViewHeaderFooterTextView *)self label];
  [label setText:textCopy];
}

- (NSString)text
{
  label = [(WFTableViewHeaderFooterTextView *)self label];
  text = [label text];

  return text;
}

- (WFTableViewHeaderFooterTextView)initWithReuseIdentifier:(id)identifier
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = WFTableViewHeaderFooterTextView;
  v3 = [(WFTableViewHeaderFooterTextView *)&v21 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(UILabel *)v4 setNumberOfLines:0];
    [(UILabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v4 setTextColor:secondaryLabelColor];

    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)v4 setFont:v6];

    label = v3->_label;
    v3->_label = v4;
    v8 = v4;

    contentView = [(WFTableViewHeaderFooterTextView *)v3 contentView];
    [contentView addSubview:v8];
    v20 = MEMORY[0x277CCAAD0];
    topAnchor = [(UILabel *)v8 topAnchor];
    topAnchor2 = [contentView topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
    v22[0] = v12;
    bottomAnchor = [(UILabel *)v8 bottomAnchor];
    bottomAnchor2 = [contentView bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    v22[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    [v20 activateConstraints:v16];

    [(WFTableViewHeaderFooterTextView *)v3 setHorizontalPadding:10.0];
    LODWORD(v17) = 1144750080;
    [(UILabel *)v8 setContentCompressionResistancePriority:1 forAxis:v17];

    v18 = v3;
  }

  return v3;
}

- (WFTableViewHeaderFooterTextView)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(WFTableViewHeaderFooterTextView *)self initWithReuseIdentifier:v4];

  return v5;
}

@end