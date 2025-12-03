@interface PUPhotosSharingProgressOverlay
- (PUPhotosSharingProgressOverlay)initWithFrame:(CGRect)frame;
- (UIWindow)cachedMainWindow;
- (id)_grayScaleImageFromImage:(id)image;
- (id)_mainWindow;
- (id)_screenshotImage;
- (void)_installInStatusBarWindow;
- (void)_setupOverlayAnimated:(BOOL)animated;
- (void)_tearDownOverlayAnimated:(BOOL)animated;
- (void)addProgressView:(id)view;
- (void)setShowing:(BOOL)showing animated:(BOOL)animated;
- (void)willRemoveSubview:(id)subview;
@end

@implementation PUPhotosSharingProgressOverlay

- (UIWindow)cachedMainWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_cachedMainWindow);

  return WeakRetained;
}

- (void)willRemoveSubview:(id)subview
{
  subviewCopy = subview;
  progressView = [(PUPhotosSharingProgressOverlay *)self progressView];

  if (progressView == subviewCopy)
  {
    v6 = dispatch_time(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__PUPhotosSharingProgressOverlay_willRemoveSubview___block_invoke;
    block[3] = &unk_1E7B80DD0;
    block[4] = self;
    dispatch_after(v6, MEMORY[0x1E69E96A0], block);
  }
}

- (void)setShowing:(BOOL)showing animated:(BOOL)animated
{
  if (self->_isShowing != showing)
  {
    self->_isShowing = showing;
    if (showing)
    {
      [(PUPhotosSharingProgressOverlay *)self _setupOverlayAnimated:animated];
    }

    else
    {
      [(PUPhotosSharingProgressOverlay *)self _tearDownOverlayAnimated:animated];
    }
  }
}

- (void)addProgressView:(id)view
{
  if (view)
  {
    viewCopy = view;
    [(PUPhotosSharingProgressOverlay *)self _installInStatusBarWindow];
    [viewCopy frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    window = [(PUPhotosSharingProgressOverlay *)self window];
    [window bounds];
    MaxY = CGRectGetMaxY(v17);
    v18.origin.x = 0.0;
    v18.origin.y = v5;
    v18.size.width = v7;
    v18.size.height = v9;
    v12 = MaxY - CGRectGetHeight(v18);

    window2 = [(PUPhotosSharingProgressOverlay *)self window];
    [window2 bounds];
    Width = CGRectGetWidth(v19);

    [(PUPhotosSharingProgressOverlay *)self convertRect:0 fromView:0.0, v12, Width, v9];
    [viewCopy setFrame:?];
    [viewCopy setAutoresizingMask:10];
    [(PUPhotosSharingProgressOverlay *)self addSubview:viewCopy];
    [(PUPhotosSharingProgressOverlay *)self setProgressView:viewCopy];
  }
}

- (void)_tearDownOverlayAnimated:(BOOL)animated
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__PUPhotosSharingProgressOverlay__tearDownOverlayAnimated___block_invoke;
  v4[3] = &unk_1E7B80DD0;
  v4[4] = self;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__PUPhotosSharingProgressOverlay__tearDownOverlayAnimated___block_invoke_2;
  v3[3] = &unk_1E7B7F020;
  v3[4] = self;
  [MEMORY[0x1E69DD250] pu_animateWithDuration:v4 animations:v3 completion:0.2];
}

void __59__PUPhotosSharingProgressOverlay__tearDownOverlayAnimated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = [*(a1 + 32) cachedMainWindow];
  [v2 endDisablingInterfaceAutorotation];
}

- (void)_setupOverlayAnimated:(BOOL)animated
{
  cachedMainWindow = [(PUPhotosSharingProgressOverlay *)self cachedMainWindow];
  [cachedMainWindow beginDisablingInterfaceAutorotation];

  [(PUPhotosSharingProgressOverlay *)self _installInStatusBarWindow];
  _screenshotImage = [(PUPhotosSharingProgressOverlay *)self _screenshotImage];
  if (_screenshotImage)
  {
    v6 = [(PUPhotosSharingProgressOverlay *)self _grayScaleImageFromImage:_screenshotImage];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6];
      [(PUPhotosSharingProgressOverlay *)self addSubview:v7];
      [(PUPhotosSharingProgressOverlay *)self bounds];
      [v7 setFrame:?];
      v8 = objc_alloc(MEMORY[0x1E69DD250]);
      [(PUPhotosSharingProgressOverlay *)self bounds];
      v9 = [v8 initWithFrame:?];
      [(PUPhotosSharingProgressOverlay *)self addSubview:v9];
      v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
      [v9 setBackgroundColor:v10];
    }
  }

  progressView = [(PUPhotosSharingProgressOverlay *)self progressView];
  [(PUPhotosSharingProgressOverlay *)self bringSubviewToFront:progressView];

  [(PUPhotosSharingProgressOverlay *)self setAlpha:0.0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__PUPhotosSharingProgressOverlay__setupOverlayAnimated___block_invoke;
  v12[3] = &unk_1E7B80DD0;
  v12[4] = self;
  [MEMORY[0x1E69DD250] pu_animateWithDuration:v12 animations:0.2];
}

- (id)_grayScaleImageFromImage:(id)image
{
  if (image)
  {
    v3 = *MEMORY[0x1E695EFF8];
    v4 = *(MEMORY[0x1E695EFF8] + 8);
    imageCopy = image;
    [imageCopy size];
    v7 = v6;
    v9 = v8;
    [imageCopy scale];
    v11 = v7 * v10;
    v12 = v9 * v10;
    DeviceGray = CGColorSpaceCreateDeviceGray();
    v14 = CGBitmapContextCreate(0, v11, v12, 8uLL, 0, DeviceGray, 0);
    cGImage = [imageCopy CGImage];

    v20.origin.x = v3;
    v20.origin.y = v4;
    v20.size.width = v11;
    v20.size.height = v12;
    CGContextDrawImage(v14, v20, cGImage);
    Image = CGBitmapContextCreateImage(v14);
    v17 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image];
    CGColorSpaceRelease(DeviceGray);
    CGContextRelease(v14);
    CFRelease(Image);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_screenshotImage
{
  v2 = _UICreateScreenUIImageWithRotation();

  return v2;
}

- (void)_installInStatusBarWindow
{
  [(PUPhotosSharingProgressOverlay *)self setAlpha:0.0];
  _mainWindow = [(PUPhotosSharingProgressOverlay *)self _mainWindow];
  [_mainWindow addSubview:self];
}

- (id)_mainWindow
{
  cachedMainWindow = [(PUPhotosSharingProgressOverlay *)self cachedMainWindow];

  if (!cachedMainWindow)
  {
    px_firstKeyWindow = [*MEMORY[0x1E69DDA98] px_firstKeyWindow];
    [(PUPhotosSharingProgressOverlay *)self setCachedMainWindow:px_firstKeyWindow];
    if (!px_firstKeyWindow)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosSharingProgressOverlay.m" lineNumber:63 description:@"Main window could not be determined for PUPhotosSharingProgressOverlay"];
    }
  }

  return [(PUPhotosSharingProgressOverlay *)self cachedMainWindow];
}

- (PUPhotosSharingProgressOverlay)initWithFrame:(CGRect)frame
{
  v4 = [(PUPhotosSharingProgressOverlay *)self _mainWindow:frame.origin.x];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v14.receiver = self;
  v14.super_class = PUPhotosSharingProgressOverlay;
  return [(PUPhotosSharingProgressOverlay *)&v14 initWithFrame:v6, v8, v10, v12];
}

@end