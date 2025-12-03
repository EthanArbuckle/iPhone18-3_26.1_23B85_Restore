@interface SFAirDropActiveIconView
+ (id)baseImage;
- (SFAirDropActiveIconView)initWithFrame:(CGRect)frame grayscale:(BOOL)grayscale;
- (void)layoutSubviews;
- (void)setMasked:(BOOL)masked;
@end

@implementation SFAirDropActiveIconView

+ (id)baseImage
{
  if (baseImage_onceToken != -1)
  {
    +[SFAirDropActiveIconView baseImage];
  }

  v3 = baseImage_image;

  return v3;
}

void __36__SFAirDropActiveIconView_baseImage__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v0 bundleURL];

  v1 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:"AirDrop-active.png" isDirectory:0 relativeToURL:v6];
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [v1 path];
  v4 = [v2 imageWithContentsOfFile:v3];
  v5 = baseImage_image;
  baseImage_image = v4;
}

- (SFAirDropActiveIconView)initWithFrame:(CGRect)frame grayscale:(BOOL)grayscale
{
  grayscaleCopy = grayscale;
  baseImage = [objc_opt_class() baseImage];
  [baseImage size];
  v8 = v7;
  [baseImage size];
  v14.receiver = self;
  v14.super_class = SFAirDropActiveIconView;
  v10 = [(SFAirDropActiveIconView *)&v14 initWithFrame:0.0, 0.0, v8, v9];
  if (v10)
  {
    if (grayscaleCopy)
    {
      v11 = [baseImage imageWithRenderingMode:2];

      grayColor = [MEMORY[0x1E69DC888] grayColor];
      [(SFAirDropActiveIconView *)v10 setTintColor:grayColor];

      baseImage = v11;
    }

    [(SFAirDropActiveIconView *)v10 setImage:baseImage];
    [(SFAirDropActiveIconView *)v10 setContentMode:4];
  }

  return v10;
}

- (void)layoutSubviews
{
  if (!self->_circleMaskView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DD250]);
    [(SFAirDropActiveIconView *)self bounds];
    v4 = [v3 initWithFrame:?];
    circleMaskView = self->_circleMaskView;
    self->_circleMaskView = v4;

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)self->_circleMaskView setBackgroundColor:blackColor];

    [(UIView *)self->_circleMaskView bounds];
    v7 = CGRectGetWidth(v14) * 0.5;
    layer = [(UIView *)self->_circleMaskView layer];
    [layer setCornerRadius:v7];

    CGAffineTransformMakeScale(&v13, 0.0, 0.0);
    v9 = self->_circleMaskView;
    v12 = v13;
    [(UIView *)v9 setTransform:&v12];
    layer2 = [(UIView *)self->_circleMaskView layer];
    [layer2 setCompositingFilter:@"destOut"];

    [(SFAirDropActiveIconView *)self addSubview:self->_circleMaskView];
    self->_masked = 0;
  }

  v11.receiver = self;
  v11.super_class = SFAirDropActiveIconView;
  [(SFAirDropActiveIconView *)&v11 layoutSubviews];
}

- (void)setMasked:(BOOL)masked
{
  if (self->_masked != masked)
  {
    v10 = v3;
    v11 = v4;
    self->_masked = masked;
    memset(&v9, 0, sizeof(v9));
    if (masked)
    {
      v6 = 1.0;
      v7 = 1.0;
    }

    else
    {
      v6 = 0.0;
      v7 = 0.0;
    }

    CGAffineTransformMakeScale(&v9, v6, v7);
    v8 = v9;
    [(UIView *)self->_circleMaskView setTransform:&v8];
  }
}

@end