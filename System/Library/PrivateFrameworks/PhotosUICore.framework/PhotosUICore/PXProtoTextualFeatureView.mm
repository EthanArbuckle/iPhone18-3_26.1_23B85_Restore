@interface PXProtoTextualFeatureView
- (CGSize)compactContentSize;
- (CGSize)regularContentSize;
- (UIEdgeInsets)minimumMargins;
- (void)layoutSubviews;
- (void)updateContent;
@end

@implementation PXProtoTextualFeatureView

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = PXProtoTextualFeatureView;
  [(PXProtoFeatureView *)&v18 layoutSubviews];
  superview = [(UILabel *)self->_label superview];
  [superview bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UILabel *)self->_label bounds];
  v13 = v12;
  v15 = v14;
  [(UILabel *)self->_label intrinsicContentSize];
  v17 = v16;
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  [(UILabel *)self->_label setBounds:v13, v15, CGRectGetWidth(v19), v17];
  PXRectGetCenter();
}

- (void)updateContent
{
  v11.receiver = self;
  v11.super_class = PXProtoTextualFeatureView;
  [(PXProtoFeatureView *)&v11 updateContent];
  if (!self->_label)
  {
    v3 = objc_alloc(MEMORY[0x1E69DCC10]);
    contentView = [(PXProtoFeatureView *)self contentView];
    [contentView bounds];
    v5 = [v3 initWithFrame:?];
    label = self->_label;
    self->_label = v5;

    [(UILabel *)self->_label setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_label setMinimumScaleFactor:0.6];
    [(UILabel *)self->_label setTextAlignment:1];
    contentView2 = [(PXProtoFeatureView *)self contentView];
    [contentView2 addSubview:self->_label];
  }

  feature = [(PXProtoFeatureView *)self feature];
  featureLocalizedTitle = [feature featureLocalizedTitle];
  [(UILabel *)self->_label setText:featureLocalizedTitle];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(UILabel *)self->_label setTextColor:whiteColor];
}

- (CGSize)compactContentSize
{
  [(PXProtoTextualFeatureView *)self regularContentSize];
  v4 = v3;
  [(PXProtoFeatureView *)self recommendedCompactContentHeight];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (CGSize)regularContentSize
{
  [(UILabel *)self->_label intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIEdgeInsets)minimumMargins
{
  v2 = 0.0;
  v3 = 10.0;
  v4 = 0.0;
  v5 = 10.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end