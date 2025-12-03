@interface PXProtoFeatureLoadingPlaceholderView
- (CGSize)intrinsicContentSize;
- (PXProtoFeatureLoadingPlaceholderView)initWithFrame:(CGRect)frame;
- (void)_updateLabelText;
- (void)layoutSubviews;
- (void)statusDescriptionDidChange;
@end

@implementation PXProtoFeatureLoadingPlaceholderView

- (void)_updateLabelText
{
  statusDescription = [(PXProtoFeaturePlaceholderView *)self statusDescription];
  v5 = statusDescription;
  if (statusDescription)
  {
    v4 = statusDescription;
  }

  else
  {
    v4 = &stru_1F1741150;
  }

  [(UILabel *)self->_label setText:v4];
}

- (void)statusDescriptionDidChange
{
  v3.receiver = self;
  v3.super_class = PXProtoFeatureLoadingPlaceholderView;
  [(PXProtoFeaturePlaceholderView *)&v3 statusDescriptionDidChange];
  [(PXProtoFeatureLoadingPlaceholderView *)self _updateLabelText];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXProtoFeatureLoadingPlaceholderView;
  [(PXProtoFeatureView *)&v3 layoutSubviews];
  [(PXProtoFeatureLoadingPlaceholderView *)self bounds];
  PXRectGetCenter();
}

- (CGSize)intrinsicContentSize
{
  [(UIActivityIndicatorView *)self->_spinner intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  [(PXProtoFeaturePlaceholderView *)self preferredStatusWidth];
  if (v4 < v7)
  {
    v4 = v7;
  }

  [(UILabel *)self->_label intrinsicContentSize];
  v9 = v6 + (v8 + 5.0) * 2.0;
  v10 = v4;
  result.height = v9;
  result.width = v10;
  return result;
}

- (PXProtoFeatureLoadingPlaceholderView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = PXProtoFeatureLoadingPlaceholderView;
  v3 = [(PXProtoFeaturePlaceholderView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v3->_spinner;
    v3->_spinner = v4;

    [(UIActivityIndicatorView *)v3->_spinner startAnimating];
    [(PXProtoFeatureLoadingPlaceholderView *)v3 addSubview:v3->_spinner];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v3->_label;
    v3->_label = v6;

    [(UILabel *)v3->_label setTextAlignment:1];
    v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.200000003];
    [(UILabel *)v3->_label setTextColor:v8];

    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [(UILabel *)v3->_label setFont:v9];

    [(PXProtoFeatureLoadingPlaceholderView *)v3 addSubview:v3->_label];
    [(PXProtoFeatureLoadingPlaceholderView *)v3 _updateLabelText];
  }

  return v3;
}

@end