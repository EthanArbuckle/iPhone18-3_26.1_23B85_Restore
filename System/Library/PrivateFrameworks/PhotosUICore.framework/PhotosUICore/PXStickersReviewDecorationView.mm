@interface PXStickersReviewDecorationView
- (CGRect)clippingRect;
- (PXStickersReviewDecorationView)initWithFrame:(CGRect)frame;
- (float)_scoreForAssetReference:(id)reference;
- (void)setUserData:(id)data;
@end

@implementation PXStickersReviewDecorationView

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setUserData:(id)data
{
  dataCopy = data;
  if (self->_userData != dataCopy)
  {
    v14 = dataCopy;
    objc_storeStrong(&self->_userData, data);
    v7 = v14;
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        px_descriptionForAssertionMessage = [(NSCopying *)v7 px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXStickersReviewDecorationView.m" lineNumber:72 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"userData", v12, px_descriptionForAssertionMessage}];
      }
    }

    [(PXStickersReviewDecorationView *)self _scoreForAssetReference:v7];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %.2f ", v8];
    [(UILabel *)self->_label setText:v9];

    dataCopy = v14;
  }
}

- (float)_scoreForAssetReference:(id)reference
{
  referenceCopy = reference;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStickersReviewDecorationView.m" lineNumber:57 description:{@"Method %s is a responsibility of subclass %@", "-[PXStickersReviewDecorationView _scoreForAssetReference:]", v8}];

  abort();
}

- (PXStickersReviewDecorationView)initWithFrame:(CGRect)frame
{
  v19[2] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = PXStickersReviewDecorationView;
  v3 = [(PXStickersReviewDecorationView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v3->_label;
    v3->_label = v4;

    layer = [(UILabel *)v3->_label layer];
    [layer setCornerRadius:4.0];

    layer2 = [(UILabel *)v3->_label layer];
    [layer2 setMasksToBounds:1];

    [(PXStickersReviewDecorationView *)v3 addSubview:v3->_label];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v3->_label setBackgroundColor:whiteColor];

    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UILabel *)v3->_label leadingAnchor];
    leadingAnchor2 = [(PXStickersReviewDecorationView *)v3 leadingAnchor];
    v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
    v19[0] = v12;
    bottomAnchor = [(UILabel *)v3->_label bottomAnchor];
    bottomAnchor2 = [(PXStickersReviewDecorationView *)v3 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
    v19[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    [v9 activateConstraints:v16];
  }

  return v3;
}

@end