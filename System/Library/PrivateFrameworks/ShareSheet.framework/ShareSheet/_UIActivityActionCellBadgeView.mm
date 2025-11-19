@interface _UIActivityActionCellBadgeView
- (_UIActivityActionCellBadgeView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation _UIActivityActionCellBadgeView

- (_UIActivityActionCellBadgeView)initWithFrame:(CGRect)a3
{
  v27.receiver = self;
  v27.super_class = _UIActivityActionCellBadgeView;
  v3 = [(_UIActivityActionCellBadgeView *)&v27 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [v4 setFont:v5];

    [v4 setAdjustsFontForContentSizeCategory:1];
    [v4 setTextAlignment:1];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v6) = 1144766464;
    [v4 setContentHuggingPriority:0 forAxis:v6];
    LODWORD(v7) = 1144766464;
    [v4 setContentCompressionResistancePriority:1 forAxis:v7];
    [v4 setAccessibilityIdentifier:@"titleLabel"];
    [(_UIActivityActionCellBadgeView *)v3 addSubview:v4];
    [(_UIActivityActionCellBadgeView *)v3 setTitleLabel:v4];
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = [v4 leadingAnchor];
    v10 = [(_UIActivityActionCellBadgeView *)v3 leadingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:6.0];
    [v8 addObject:v11];

    v12 = [(_UIActivityActionCellBadgeView *)v3 trailingAnchor];
    v13 = [v4 trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:6.0];
    [v8 addObject:v14];

    v15 = [v4 topAnchor];
    v16 = [(_UIActivityActionCellBadgeView *)v3 topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:3.0];

    LODWORD(v18) = 1144766464;
    [v17 setPriority:v18];
    [v8 addObject:v17];
    v19 = [(_UIActivityActionCellBadgeView *)v3 bottomAnchor];
    v20 = [v4 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:3.0];

    LODWORD(v22) = 1144766464;
    [v21 setPriority:v22];
    [v8 addObject:v21];
    v23 = [(_UIActivityActionCellBadgeView *)v3 widthAnchor];
    v24 = [(_UIActivityActionCellBadgeView *)v3 heightAnchor];
    v25 = [v23 constraintGreaterThanOrEqualToAnchor:v24];
    [v8 addObject:v25];

    [MEMORY[0x1E696ACD8] activateConstraints:v8];
  }

  return v3;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = _UIActivityActionCellBadgeView;
  [(_UIActivityActionCellBadgeView *)&v6 layoutSubviews];
  [(_UIActivityActionCellBadgeView *)self bounds];
  Width = CGRectGetWidth(v7);
  [(_UIActivityActionCellBadgeView *)self bounds];
  v4 = fmin(Width, CGRectGetHeight(v8)) * 0.5;
  v5 = [(_UIActivityActionCellBadgeView *)self layer];
  [v5 setCornerRadius:v4];
}

@end