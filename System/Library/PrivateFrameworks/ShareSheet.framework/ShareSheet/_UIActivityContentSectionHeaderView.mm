@interface _UIActivityContentSectionHeaderView
- (_UIActivityContentSectionHeaderView)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
@end

@implementation _UIActivityContentSectionHeaderView

- (_UIActivityContentSectionHeaderView)initWithFrame:(CGRect)frame
{
  v29.receiver = self;
  v29.super_class = _UIActivityContentSectionHeaderView;
  v3 = [(_UIActivityContentSectionHeaderView *)&v29 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [(UILabel *)v3->_titleLabel setFont:v6];

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v3->_titleLabel setTextColor:labelColor];

    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v8) = 1148846080;
    [(UILabel *)v3->_titleLabel setContentCompressionResistancePriority:0 forAxis:v8];
    [(UILabel *)v3->_titleLabel setAccessibilityIdentifier:@"header.titleLabel"];
    titleLabel = [(_UIActivityContentSectionHeaderView *)v3 titleLabel];
    [(_UIActivityContentSectionHeaderView *)v3 addSubview:titleLabel];

    array = [MEMORY[0x1E695DF70] array];
    topAnchor = [(UILabel *)v3->_titleLabel topAnchor];
    layoutMarginsGuide = [(_UIActivityContentSectionHeaderView *)v3 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    titleLabelTopConstraint = v3->_titleLabelTopConstraint;
    v3->_titleLabelTopConstraint = v14;

    [array addObject:v3->_titleLabelTopConstraint];
    bottomAnchor = [(UILabel *)v3->_titleLabel bottomAnchor];
    layoutMarginsGuide2 = [(_UIActivityContentSectionHeaderView *)v3 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide2 bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v19];

    leadingAnchor = [(UILabel *)v3->_titleLabel leadingAnchor];
    layoutMarginsGuide3 = [(_UIActivityContentSectionHeaderView *)v3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide3 leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v23];

    trailingAnchor = [(UILabel *)v3->_titleLabel trailingAnchor];
    layoutMarginsGuide4 = [(_UIActivityContentSectionHeaderView *)v3 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide4 trailingAnchor];
    v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v27];

    [MEMORY[0x1E696ACD8] activateConstraints:array];
  }

  return v3;
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = _UIActivityContentSectionHeaderView;
  [(_UIActivityContentSectionHeaderView *)&v2 prepareForReuse];
}

@end