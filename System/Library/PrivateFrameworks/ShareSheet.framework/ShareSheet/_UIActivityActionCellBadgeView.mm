@interface _UIActivityActionCellBadgeView
- (_UIActivityActionCellBadgeView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation _UIActivityActionCellBadgeView

- (_UIActivityActionCellBadgeView)initWithFrame:(CGRect)frame
{
  v27.receiver = self;
  v27.super_class = _UIActivityActionCellBadgeView;
  v3 = [(_UIActivityActionCellBadgeView *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    array = [MEMORY[0x1E695DF70] array];
    leadingAnchor = [v4 leadingAnchor];
    leadingAnchor2 = [(_UIActivityActionCellBadgeView *)v3 leadingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:6.0];
    [array addObject:v11];

    trailingAnchor = [(_UIActivityActionCellBadgeView *)v3 trailingAnchor];
    trailingAnchor2 = [v4 trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:6.0];
    [array addObject:v14];

    topAnchor = [v4 topAnchor];
    topAnchor2 = [(_UIActivityActionCellBadgeView *)v3 topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:3.0];

    LODWORD(v18) = 1144766464;
    [v17 setPriority:v18];
    [array addObject:v17];
    bottomAnchor = [(_UIActivityActionCellBadgeView *)v3 bottomAnchor];
    bottomAnchor2 = [v4 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:3.0];

    LODWORD(v22) = 1144766464;
    [v21 setPriority:v22];
    [array addObject:v21];
    widthAnchor = [(_UIActivityActionCellBadgeView *)v3 widthAnchor];
    heightAnchor = [(_UIActivityActionCellBadgeView *)v3 heightAnchor];
    v25 = [widthAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor];
    [array addObject:v25];

    [MEMORY[0x1E696ACD8] activateConstraints:array];
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
  layer = [(_UIActivityActionCellBadgeView *)self layer];
  [layer setCornerRadius:v4];
}

@end