@interface VUIAppInstallView
+ (CGSize)_appIconSize;
+ (double)_appIconRadius;
+ (id)_progressMaskImage;
- (CGSize)intrinsicContentSize;
- (VUIAppInstallView)initWithFrame:(CGRect)a3;
- (void)_makeImageBorderVisible:(BOOL)a3;
- (void)dealloc;
- (void)finishInstallationWithCompletion:(id)a3;
- (void)layoutSubviews;
- (void)progressViewCanBeRemoved:(id)a3;
- (void)setAppIcon:(id)a3;
- (void)setInstallProgress:(double)a3;
- (void)setWaiting;
@end

@implementation VUIAppInstallView

- (VUIAppInstallView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v23.receiver = self;
  v23.super_class = VUIAppInstallView;
  v7 = [(VUIAppInstallView *)&v23 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
    appIconImageView = v7->_appIconImageView;
    v7->_appIconImageView = v8;

    [(UIImageView *)v7->_appIconImageView setClipsToBounds:1];
    [(UIImageView *)v7->_appIconImageView setAutoresizingMask:18];
    if (([MEMORY[0x1E69DF6F0] isTV] & 1) == 0)
    {
      v10 = v7->_appIconImageView;
      +[VUIAppInstallView _appIconRadius];
      [(UIImageView *)v10 _setContinuousCornerRadius:?];
      v11 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v11 scale];
      v13 = 1.0 / v12;

      v7->_imageBorderWidth = v13;
      v14 = [(UIImageView *)v7->_appIconImageView layer];
      [v14 setBorderWidth:v13];

      v15 = [(UIImageView *)v7->_appIconImageView layer];
      v16 = [MEMORY[0x1E69DC888] colorWithWhite:0.8 alpha:1.0];
      [v15 setBorderColor:{objc_msgSend(v16, "CGColor")}];

      v17 = [(UIImageView *)v7->_appIconImageView layer];
      [v17 setBorderPathIsBounds:1];
    }

    [(VUIAppInstallView *)v7 addSubview:v7->_appIconImageView];
    v18 = [[VUISBIconProgressView alloc] initWithFrame:x, y, width, height];
    progressView = v7->_progressView;
    v7->_progressView = v18;

    [(VUISBIconProgressView *)v7->_progressView setDelegate:v7];
    v20 = v7->_progressView;
    v21 = [objc_opt_class() _progressMaskImage];
    [(VUISBIconProgressView *)v20 setOverlayImage:v21];

    [(VUISBIconProgressView *)v7->_progressView setAutoresizingMask:18];
    [(UIImageView *)v7->_appIconImageView addSubview:v7->_progressView];
  }

  return v7;
}

- (CGSize)intrinsicContentSize
{
  v2 = objc_opt_class();

  [v2 _appIconSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = VUIAppInstallView;
  [(VUIAppInstallView *)&v11 layoutSubviews];
  [(VUIAppInstallView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIImageView *)self->_appIconImageView setFrame:?];
  [(VUISBIconProgressView *)self->_progressView setFrame:v4, v6, v8, v10];
}

- (void)dealloc
{
  [(VUISBIconProgressView *)self->_progressView setDelegate:0];
  v3.receiver = self;
  v3.super_class = VUIAppInstallView;
  [(VUIAppInstallView *)&v3 dealloc];
}

- (void)progressViewCanBeRemoved:(id)a3
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, a2, a3);
    v5 = self->_completion;
    self->_completion = 0;

    [(VUIAppInstallView *)self _makeImageBorderVisible:1];
  }
}

- (void)finishInstallationWithCompletion:(id)a3
{
  v4 = [a3 copy];
  completion = self->_completion;
  self->_completion = v4;

  progressView = self->_progressView;

  [(VUISBIconProgressView *)progressView setState:0 paused:0 fractionLoaded:1 animated:1.0];
}

- (void)setAppIcon:(id)a3
{
  v5 = a3;
  if (self->_appIcon != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_appIcon, a3);
    [(UIImageView *)self->_appIconImageView setImage:v6];
    v5 = v6;
  }
}

- (void)setInstallProgress:(double)a3
{
  if (vabdd_f64(self->_installProgress, a3) > 0.00000011920929)
  {
    self->_installProgress = a3;
    [(VUISBIconProgressView *)self->_progressView setState:2 paused:0 fractionLoaded:1 animated:?];

    [(VUIAppInstallView *)self _makeImageBorderVisible:0];
  }
}

- (void)setWaiting
{
  [(VUISBIconProgressView *)self->_progressView setState:1 paused:0 fractionLoaded:0 animated:0.0];

  [(VUIAppInstallView *)self _makeImageBorderVisible:0];
}

- (void)_makeImageBorderVisible:(BOOL)a3
{
  v3 = a3;
  if (([MEMORY[0x1E69DF6F0] isTV] & 1) == 0)
  {
    v5 = [(UIImageView *)self->_appIconImageView layer];
    imageBorderWidth = 0.0;
    if (v3)
    {
      imageBorderWidth = self->_imageBorderWidth;
    }

    v7 = v5;
    [v5 setBorderWidth:imageBorderWidth];
  }
}

+ (id)_progressMaskImage
{
  v3 = _progressMaskImage__progressMaskImage;
  if (!_progressMaskImage__progressMaskImage)
  {
    v4 = *MEMORY[0x1E695EFF8];
    v5 = *(MEMORY[0x1E695EFF8] + 8);
    [a1 _appIconSize];
    v7 = v6;
    v9 = v8;
    v10 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v10 scale];
    v12 = v11;
    v21.width = v7;
    v21.height = v9;
    UIGraphicsBeginImageContextWithOptions(v21, 0, v12);

    v13 = [MEMORY[0x1E69DC888] blackColor];
    [v13 setFill];

    v14 = MEMORY[0x1E69DC728];
    [a1 _appIconRadius];
    v16 = [v14 bezierPathWithRoundedRect:v4 cornerRadius:{v5, v7, v9, v15}];
    [v16 fillWithBlendMode:17 alpha:1.0];

    v17 = UIGraphicsGetImageFromCurrentImageContext();
    v18 = _progressMaskImage__progressMaskImage;
    _progressMaskImage__progressMaskImage = v17;

    UIGraphicsEndImageContext();
    v3 = _progressMaskImage__progressMaskImage;
  }

  return v3;
}

+ (double)_appIconRadius
{
  [a1 _appIconSize];

  [VUIAppIconImageService iconCornerRadiusForSize:?];
  return result;
}

+ (CGSize)_appIconSize
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 2;

  v4 = dbl_1E4297510[v3];
  v5 = dbl_1E4297520[v3];
  result.height = v5;
  result.width = v4;
  return result;
}

@end