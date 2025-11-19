@interface PXStickersReviewDecorationView
- (CGRect)clippingRect;
- (PXStickersReviewDecorationView)initWithFrame:(CGRect)a3;
- (float)_scoreForAssetReference:(id)a3;
- (void)setUserData:(id)a3;
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

- (void)setUserData:(id)a3
{
  v6 = a3;
  if (self->_userData != v6)
  {
    v14 = v6;
    objc_storeStrong(&self->_userData, a3);
    v7 = v14;
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [(NSCopying *)v7 px_descriptionForAssertionMessage];
        [v10 handleFailureInMethod:a2 object:self file:@"PXStickersReviewDecorationView.m" lineNumber:72 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"userData", v12, v13}];
      }
    }

    [(PXStickersReviewDecorationView *)self _scoreForAssetReference:v7];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %.2f ", v8];
    [(UILabel *)self->_label setText:v9];

    v6 = v14;
  }
}

- (float)_scoreForAssetReference:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXStickersReviewDecorationView.m" lineNumber:57 description:{@"Method %s is a responsibility of subclass %@", "-[PXStickersReviewDecorationView _scoreForAssetReference:]", v8}];

  abort();
}

- (PXStickersReviewDecorationView)initWithFrame:(CGRect)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = PXStickersReviewDecorationView;
  v3 = [(PXStickersReviewDecorationView *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v3->_label;
    v3->_label = v4;

    v6 = [(UILabel *)v3->_label layer];
    [v6 setCornerRadius:4.0];

    v7 = [(UILabel *)v3->_label layer];
    [v7 setMasksToBounds:1];

    [(PXStickersReviewDecorationView *)v3 addSubview:v3->_label];
    v8 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v3->_label setBackgroundColor:v8];

    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = MEMORY[0x1E696ACD8];
    v10 = [(UILabel *)v3->_label leadingAnchor];
    v11 = [(PXStickersReviewDecorationView *)v3 leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:10.0];
    v19[0] = v12;
    v13 = [(UILabel *)v3->_label bottomAnchor];
    v14 = [(PXStickersReviewDecorationView *)v3 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:-10.0];
    v19[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    [v9 activateConstraints:v16];
  }

  return v3;
}

@end