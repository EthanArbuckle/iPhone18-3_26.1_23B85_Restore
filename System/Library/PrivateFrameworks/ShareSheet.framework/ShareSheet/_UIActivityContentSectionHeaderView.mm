@interface _UIActivityContentSectionHeaderView
- (_UIActivityContentSectionHeaderView)initWithFrame:(CGRect)a3;
- (void)prepareForReuse;
@end

@implementation _UIActivityContentSectionHeaderView

- (_UIActivityContentSectionHeaderView)initWithFrame:(CGRect)a3
{
  v29.receiver = self;
  v29.super_class = _UIActivityContentSectionHeaderView;
  v3 = [(_UIActivityContentSectionHeaderView *)&v29 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [(UILabel *)v3->_titleLabel setFont:v6];

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    v7 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v3->_titleLabel setTextColor:v7];

    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v8) = 1148846080;
    [(UILabel *)v3->_titleLabel setContentCompressionResistancePriority:0 forAxis:v8];
    [(UILabel *)v3->_titleLabel setAccessibilityIdentifier:@"header.titleLabel"];
    v9 = [(_UIActivityContentSectionHeaderView *)v3 titleLabel];
    [(_UIActivityContentSectionHeaderView *)v3 addSubview:v9];

    v10 = [MEMORY[0x1E695DF70] array];
    v11 = [(UILabel *)v3->_titleLabel topAnchor];
    v12 = [(_UIActivityContentSectionHeaderView *)v3 layoutMarginsGuide];
    v13 = [v12 topAnchor];
    v14 = [v11 constraintEqualToAnchor:v13 constant:10.0];
    titleLabelTopConstraint = v3->_titleLabelTopConstraint;
    v3->_titleLabelTopConstraint = v14;

    [v10 addObject:v3->_titleLabelTopConstraint];
    v16 = [(UILabel *)v3->_titleLabel bottomAnchor];
    v17 = [(_UIActivityContentSectionHeaderView *)v3 layoutMarginsGuide];
    v18 = [v17 bottomAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    [v10 addObject:v19];

    v20 = [(UILabel *)v3->_titleLabel leadingAnchor];
    v21 = [(_UIActivityContentSectionHeaderView *)v3 layoutMarginsGuide];
    v22 = [v21 leadingAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    [v10 addObject:v23];

    v24 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v25 = [(_UIActivityContentSectionHeaderView *)v3 layoutMarginsGuide];
    v26 = [v25 trailingAnchor];
    v27 = [v24 constraintEqualToAnchor:v26];
    [v10 addObject:v27];

    [MEMORY[0x1E696ACD8] activateConstraints:v10];
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