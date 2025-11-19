@interface PXSharedLibraryAssistantCameraHeaderView
- (PXSharedLibraryAssistantCameraHeaderView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PXSharedLibraryAssistantCameraHeaderView

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = PXSharedLibraryAssistantCameraHeaderView;
  [(PXSharedLibraryAssistantCameraHeaderView *)&v9 layoutSubviews];
  if (!PLPhysicalDeviceIsIPad())
  {
    [(PXSharedLibraryAssistantCameraHeaderView *)self bounds];
    PXRectWithAspectRatioFittingRect();
  }

  [(PXSharedLibraryAssistantCameraHeaderView *)self bounds];
  v4 = v3 + -100.0;
  v5 = (v3 + -100.0) / self->_aspectRatio;
  [(PXSharedLibraryAssistantCameraHeaderView *)self bounds];
  v6 = CGRectGetMaxY(v10) - v5;
  [(PXSharedLibraryAssistantCameraHeaderView *)self bounds];
  MinY = CGRectGetMinY(v11);
  if (v6 >= MinY)
  {
    v8 = v6;
  }

  else
  {
    v8 = MinY;
  }

  [(UIView *)self->_cameraView setFrame:50.0, v8, v4, v5];
}

- (PXSharedLibraryAssistantCameraHeaderView)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = PXSharedLibraryAssistantCameraHeaderView;
  v3 = [(PXSharedLibraryAssistantCameraHeaderView *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    if (PLPhysicalDeviceIsIPad())
    {
      v4 = MEMORY[0x1E69DCAB8];
      v5 = [MEMORY[0x1E696AAE8] px_sharedLibraryBundle];
      v6 = @"SharedLibraryAssistantCameraPad";
    }

    else
    {
      v7 = PLHasHomeButton();
      v4 = MEMORY[0x1E69DCAB8];
      v5 = [MEMORY[0x1E696AAE8] px_sharedLibraryBundle];
      if (v7)
      {
        v6 = @"SharedLibraryAssistantCameraLegacy";
      }

      else
      {
        v6 = @"SharedLibraryAssistantCamera";
      }
    }

    v8 = [v4 px_imageNamed:v6 bundle:v5];

    v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
    v10 = objc_alloc(MEMORY[0x1E69DD250]);
    [v8 size];
    v12 = v11;
    [v8 size];
    v14 = [v10 initWithFrame:{0.0, 0.0, v12, v13}];
    [v14 addSubview:v9];
    [v14 bounds];
    v15 = [v14 resizableSnapshotViewFromRect:1 afterScreenUpdates:? withCapInsets:?];

    cameraView = v3->_cameraView;
    v3->_cameraView = v15;

    [(UIView *)v3->_cameraView frame];
    PXSizeGetAspectRatio();
  }

  return 0;
}

@end