@interface VUIAppInstallView
+ (CGSize)_appIconSize;
+ (double)_appIconRadius;
+ (id)_progressMaskImage;
- (CGSize)intrinsicContentSize;
- (VUIAppInstallView)initWithFrame:(CGRect)frame;
- (void)_makeImageBorderVisible:(BOOL)visible;
- (void)dealloc;
- (void)finishInstallationWithCompletion:(id)completion;
- (void)layoutSubviews;
- (void)progressViewCanBeRemoved:(id)removed;
- (void)setAppIcon:(id)icon;
- (void)setInstallProgress:(double)progress;
- (void)setWaiting;
@end

@implementation VUIAppInstallView

- (VUIAppInstallView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
      v13 = 1.0 / v12;

      v7->_imageBorderWidth = v13;
      layer = [(UIImageView *)v7->_appIconImageView layer];
      [layer setBorderWidth:v13];

      layer2 = [(UIImageView *)v7->_appIconImageView layer];
      v16 = [MEMORY[0x1E69DC888] colorWithWhite:0.8 alpha:1.0];
      [layer2 setBorderColor:{objc_msgSend(v16, "CGColor")}];

      layer3 = [(UIImageView *)v7->_appIconImageView layer];
      [layer3 setBorderPathIsBounds:1];
    }

    [(VUIAppInstallView *)v7 addSubview:v7->_appIconImageView];
    height = [[VUISBIconProgressView alloc] initWithFrame:x, y, width, height];
    progressView = v7->_progressView;
    v7->_progressView = height;

    [(VUISBIconProgressView *)v7->_progressView setDelegate:v7];
    v20 = v7->_progressView;
    _progressMaskImage = [objc_opt_class() _progressMaskImage];
    [(VUISBIconProgressView *)v20 setOverlayImage:_progressMaskImage];

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

- (void)progressViewCanBeRemoved:(id)removed
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, a2, removed);
    v5 = self->_completion;
    self->_completion = 0;

    [(VUIAppInstallView *)self _makeImageBorderVisible:1];
  }
}

- (void)finishInstallationWithCompletion:(id)completion
{
  v4 = [completion copy];
  completion = self->_completion;
  self->_completion = v4;

  progressView = self->_progressView;

  [(VUISBIconProgressView *)progressView setState:0 paused:0 fractionLoaded:1 animated:1.0];
}

- (void)setAppIcon:(id)icon
{
  iconCopy = icon;
  if (self->_appIcon != iconCopy)
  {
    v6 = iconCopy;
    objc_storeStrong(&self->_appIcon, icon);
    [(UIImageView *)self->_appIconImageView setImage:v6];
    iconCopy = v6;
  }
}

- (void)setInstallProgress:(double)progress
{
  if (vabdd_f64(self->_installProgress, progress) > 0.00000011920929)
  {
    self->_installProgress = progress;
    [(VUISBIconProgressView *)self->_progressView setState:2 paused:0 fractionLoaded:1 animated:?];

    [(VUIAppInstallView *)self _makeImageBorderVisible:0];
  }
}

- (void)setWaiting
{
  [(VUISBIconProgressView *)self->_progressView setState:1 paused:0 fractionLoaded:0 animated:0.0];

  [(VUIAppInstallView *)self _makeImageBorderVisible:0];
}

- (void)_makeImageBorderVisible:(BOOL)visible
{
  visibleCopy = visible;
  if (([MEMORY[0x1E69DF6F0] isTV] & 1) == 0)
  {
    layer = [(UIImageView *)self->_appIconImageView layer];
    imageBorderWidth = 0.0;
    if (visibleCopy)
    {
      imageBorderWidth = self->_imageBorderWidth;
    }

    v7 = layer;
    [layer setBorderWidth:imageBorderWidth];
  }
}

+ (id)_progressMaskImage
{
  v3 = _progressMaskImage__progressMaskImage;
  if (!_progressMaskImage__progressMaskImage)
  {
    v4 = *MEMORY[0x1E695EFF8];
    v5 = *(MEMORY[0x1E695EFF8] + 8);
    [self _appIconSize];
    v7 = v6;
    v9 = v8;
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v12 = v11;
    v21.width = v7;
    v21.height = v9;
    UIGraphicsBeginImageContextWithOptions(v21, 0, v12);

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [blackColor setFill];

    v14 = MEMORY[0x1E69DC728];
    [self _appIconRadius];
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
  [self _appIconSize];

  [VUIAppIconImageService iconCornerRadiusForSize:?];
  return result;
}

+ (CGSize)_appIconSize
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 2;

  v4 = dbl_1E4297510[v3];
  v5 = dbl_1E4297520[v3];
  result.height = v5;
  result.width = v4;
  return result;
}

@end