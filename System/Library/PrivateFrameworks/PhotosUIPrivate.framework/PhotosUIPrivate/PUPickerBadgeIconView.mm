@interface PUPickerBadgeIconView
- (PUPickerBadgeIconView)initWithFrame:(CGRect)frame;
- (void)flipToPrivacyIconAfterDelay:(double)delay;
@end

@implementation PUPickerBadgeIconView

- (void)flipToPrivacyIconAfterDelay:(double)delay
{
  photosImageView = [(PUPickerBadgeIconView *)self photosImageView];
  privacyImageView = [(PUPickerBadgeIconView *)self privacyImageView];
  v7 = dispatch_time(0, (delay * 1000000000.0));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__PUPickerBadgeIconView_flipToPrivacyIconAfterDelay___block_invoke;
  v10[3] = &unk_1E7B7F248;
  v13 = xmmword_1B3D0D0D0;
  v14 = xmmword_1B3D0D0E0;
  v11 = photosImageView;
  v12 = privacyImageView;
  v8 = privacyImageView;
  v9 = photosImageView;
  dispatch_after(v7, MEMORY[0x1E69E96A0], v10);
}

void __53__PUPickerBadgeIconView_flipToPrivacyIconAfterDelay___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69DD278]);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__PUPickerBadgeIconView_flipToPrivacyIconAfterDelay___block_invoke_2;
  v4[3] = &unk_1E7B7F350;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = 2097408;
  v3 = [v2 initWithDuration:v4 controlPoint1:0.5 controlPoint2:*(a1 + 48) animations:{*(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [v3 startAnimation];
}

- (PUPickerBadgeIconView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = PUPickerBadgeIconView;
  v3 = [(PUPickerBadgeIconView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"PhotosIndicator"];
    v6 = [v4 initWithImage:v5];
    photosImageView = v3->_photosImageView;
    v3->_photosImageView = v6;

    [(UIImageView *)v3->_photosImageView setAutoresizingMask:18];
    [(PUPickerBadgeIconView *)v3 bounds];
    [(UIImageView *)v3->_photosImageView setFrame:?];
    [(PUPickerBadgeIconView *)v3 addSubview:v3->_photosImageView];
    v8 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v9 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"PrivacyIndicator"];
    v10 = [v8 initWithImage:v9];
    privacyImageView = v3->_privacyImageView;
    v3->_privacyImageView = v10;

    [(UIImageView *)v3->_privacyImageView setAutoresizingMask:18];
    [(PUPickerBadgeIconView *)v3 bounds];
    [(UIImageView *)v3->_privacyImageView setFrame:?];
    [(UIImageView *)v3->_privacyImageView setHidden:1];
    [(PUPickerBadgeIconView *)v3 addSubview:v3->_privacyImageView];
  }

  return v3;
}

@end