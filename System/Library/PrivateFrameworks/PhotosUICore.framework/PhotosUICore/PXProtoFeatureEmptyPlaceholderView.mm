@interface PXProtoFeatureEmptyPlaceholderView
- (CGSize)intrinsicContentSize;
- (PXProtoFeatureEmptyPlaceholderView)initWithFrame:(CGRect)frame;
- (void)_updateLabelText;
- (void)statusDescriptionDidChange;
@end

@implementation PXProtoFeatureEmptyPlaceholderView

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
    v4 = @"No More Relevant Suggestion";
  }

  [(UILabel *)self->_label setText:v4];
}

- (void)statusDescriptionDidChange
{
  v3.receiver = self;
  v3.super_class = PXProtoFeatureEmptyPlaceholderView;
  [(PXProtoFeaturePlaceholderView *)&v3 statusDescriptionDidChange];
  [(PXProtoFeatureEmptyPlaceholderView *)self _updateLabelText];
}

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->_label intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  [(PXProtoFeaturePlaceholderView *)self preferredStatusWidth];
  if (v4 >= v7)
  {
    v7 = v4;
  }

  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (PXProtoFeatureEmptyPlaceholderView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = PXProtoFeatureEmptyPlaceholderView;
  v3 = [(PXProtoFeaturePlaceholderView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(PXProtoFeatureEmptyPlaceholderView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    label = v3->_label;
    v3->_label = v5;

    [(UILabel *)v3->_label setTextAlignment:1];
    [(UILabel *)v3->_label setAutoresizingMask:18];
    v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.200000003];
    [(UILabel *)v3->_label setTextColor:v7];

    [(PXProtoFeatureEmptyPlaceholderView *)v3 addSubview:v3->_label];
    [(PXProtoFeatureEmptyPlaceholderView *)v3 _updateLabelText];
  }

  return v3;
}

@end