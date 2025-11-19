@interface SBIconDotLabelAccessoryView
+ (CAColorMatrix)_vibrantColorMatrixInput;
- (CGSize)intrinsicContentSize;
- (SBIconDotLabelAccessoryView)initWithFrame:(CGRect)a3;
- (void)updateWithLegibilitySettings:(id)a3 labelFont:(id)a4;
@end

@implementation SBIconDotLabelAccessoryView

+ (CAColorMatrix)_vibrantColorMatrixInput
{
  *&retstr->var12 = 0u;
  *&retstr->var16 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var0 = 0u;
  return result;
}

- (void)updateWithLegibilitySettings:(id)a3 labelFont:(id)a4
{
  v5 = [objc_opt_class() _cachedDotImage];
  if (!v5)
  {
    v6 = MEMORY[0x1E69DCAB8];
    v7 = [objc_opt_class() labelAccessorySystemImageName];
    v8 = [v6 systemImageNamed:v7];

    [(SBIconDotLabelAccessoryView *)self intrinsicContentSize];
    v9 = [v8 sbf_resizeImageToSize:?];
    v10 = [objc_opt_class() _dotColor];
    v11 = [v9 _flatImageWithColor:v10];

    [objc_opt_class() _setCachedDotImage:v11];
    v5 = v11;
  }

  v12 = v5;
  [(UIImageView *)self->_imageView setImage:v5];
  [(UIImageView *)self->_imageView sizeToFit];
}

- (SBIconDotLabelAccessoryView)initWithFrame:(CGRect)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = SBIconDotLabelAccessoryView;
  v3 = [(SBIconDotLabelAccessoryView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SBIconDotLabelAccessoryView *)v3 layer];
    [v5 setAllowsGroupBlending:0];

    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v4->_imageView;
    v4->_imageView = v6;

    v8 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D78]];
    v9 = MEMORY[0x1E696B098];
    v10 = objc_opt_class();
    if (v10)
    {
      [v10 _vibrantColorMatrixInput];
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    v11 = [v9 valueWithCAColorMatrix:v15];
    [v8 setValue:v11 forKey:@"inputColorMatrix"];

    v12 = [(UIImageView *)v4->_imageView layer];
    v17[0] = v8;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v12 setFilters:v13];

    [(SBIconDotLabelAccessoryView *)v4 addSubview:v4->_imageView];
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  v2 = 8.0;
  v3 = 8.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end