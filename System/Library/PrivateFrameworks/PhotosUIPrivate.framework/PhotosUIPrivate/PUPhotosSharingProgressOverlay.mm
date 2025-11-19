@interface PUPhotosSharingProgressOverlay
- (PUPhotosSharingProgressOverlay)initWithFrame:(CGRect)a3;
- (UIWindow)cachedMainWindow;
- (id)_grayScaleImageFromImage:(id)a3;
- (id)_mainWindow;
- (id)_screenshotImage;
- (void)_installInStatusBarWindow;
- (void)_setupOverlayAnimated:(BOOL)a3;
- (void)_tearDownOverlayAnimated:(BOOL)a3;
- (void)addProgressView:(id)a3;
- (void)setShowing:(BOOL)a3 animated:(BOOL)a4;
- (void)willRemoveSubview:(id)a3;
@end

@implementation PUPhotosSharingProgressOverlay

- (UIWindow)cachedMainWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_cachedMainWindow);

  return WeakRetained;
}

- (void)willRemoveSubview:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotosSharingProgressOverlay *)self progressView];

  if (v5 == v4)
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

- (void)setShowing:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_isShowing != a3)
  {
    self->_isShowing = a3;
    if (a3)
    {
      [(PUPhotosSharingProgressOverlay *)self _setupOverlayAnimated:a4];
    }

    else
    {
      [(PUPhotosSharingProgressOverlay *)self _tearDownOverlayAnimated:a4];
    }
  }
}

- (void)addProgressView:(id)a3
{
  if (a3)
  {
    v15 = a3;
    [(PUPhotosSharingProgressOverlay *)self _installInStatusBarWindow];
    [v15 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = [(PUPhotosSharingProgressOverlay *)self window];
    [v10 bounds];
    MaxY = CGRectGetMaxY(v17);
    v18.origin.x = 0.0;
    v18.origin.y = v5;
    v18.size.width = v7;
    v18.size.height = v9;
    v12 = MaxY - CGRectGetHeight(v18);

    v13 = [(PUPhotosSharingProgressOverlay *)self window];
    [v13 bounds];
    Width = CGRectGetWidth(v19);

    [(PUPhotosSharingProgressOverlay *)self convertRect:0 fromView:0.0, v12, Width, v9];
    [v15 setFrame:?];
    [v15 setAutoresizingMask:10];
    [(PUPhotosSharingProgressOverlay *)self addSubview:v15];
    [(PUPhotosSharingProgressOverlay *)self setProgressView:v15];
  }
}

- (void)_tearDownOverlayAnimated:(BOOL)a3
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

- (void)_setupOverlayAnimated:(BOOL)a3
{
  v4 = [(PUPhotosSharingProgressOverlay *)self cachedMainWindow];
  [v4 beginDisablingInterfaceAutorotation];

  [(PUPhotosSharingProgressOverlay *)self _installInStatusBarWindow];
  v5 = [(PUPhotosSharingProgressOverlay *)self _screenshotImage];
  if (v5)
  {
    v6 = [(PUPhotosSharingProgressOverlay *)self _grayScaleImageFromImage:v5];
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

  v11 = [(PUPhotosSharingProgressOverlay *)self progressView];
  [(PUPhotosSharingProgressOverlay *)self bringSubviewToFront:v11];

  [(PUPhotosSharingProgressOverlay *)self setAlpha:0.0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__PUPhotosSharingProgressOverlay__setupOverlayAnimated___block_invoke;
  v12[3] = &unk_1E7B80DD0;
  v12[4] = self;
  [MEMORY[0x1E69DD250] pu_animateWithDuration:v12 animations:0.2];
}

- (id)_grayScaleImageFromImage:(id)a3
{
  if (a3)
  {
    v3 = *MEMORY[0x1E695EFF8];
    v4 = *(MEMORY[0x1E695EFF8] + 8);
    v5 = a3;
    [v5 size];
    v7 = v6;
    v9 = v8;
    [v5 scale];
    v11 = v7 * v10;
    v12 = v9 * v10;
    DeviceGray = CGColorSpaceCreateDeviceGray();
    v14 = CGBitmapContextCreate(0, v11, v12, 8uLL, 0, DeviceGray, 0);
    v15 = [v5 CGImage];

    v20.origin.x = v3;
    v20.origin.y = v4;
    v20.size.width = v11;
    v20.size.height = v12;
    CGContextDrawImage(v14, v20, v15);
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
  v3 = [(PUPhotosSharingProgressOverlay *)self _mainWindow];
  [v3 addSubview:self];
}

- (id)_mainWindow
{
  v4 = [(PUPhotosSharingProgressOverlay *)self cachedMainWindow];

  if (!v4)
  {
    v5 = [*MEMORY[0x1E69DDA98] px_firstKeyWindow];
    [(PUPhotosSharingProgressOverlay *)self setCachedMainWindow:v5];
    if (!v5)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"PUPhotosSharingProgressOverlay.m" lineNumber:63 description:@"Main window could not be determined for PUPhotosSharingProgressOverlay"];
    }
  }

  return [(PUPhotosSharingProgressOverlay *)self cachedMainWindow];
}

- (PUPhotosSharingProgressOverlay)initWithFrame:(CGRect)a3
{
  v4 = [(PUPhotosSharingProgressOverlay *)self _mainWindow:a3.origin.x];
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