@interface PUCropMaskView
- (PUCropMaskView)initWithFrame:(CGRect)frame;
- (void)_updateColor;
@end

@implementation PUCropMaskView

- (void)_updateColor
{
  v3 = +[PUInterfaceManager currentTheme];
  photoEditingBackgroundColor = [v3 photoEditingBackgroundColor];

  v19 = [photoEditingBackgroundColor colorWithAlphaComponent:0.5];

  [(PUCropMaskView *)self setBackgroundColor:v19];
  opaqueView = self->_opaqueView;
  if (opaqueView)
  {
    [(UIView *)opaqueView removeFromSuperview];
    v6 = self->_opaqueView;
    self->_opaqueView = 0;
  }

  v7 = +[PUPhotoEditProtoSettings sharedInstance];
  cropMaskBlurred = [v7 cropMaskBlurred];

  if (cropMaskBlurred)
  {
    traitCollection = [(PUCropMaskView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      v11 = 2030;
    }

    else
    {
      v11 = 2010;
    }

    v12 = [objc_alloc(MEMORY[0x1E69DD370]) initWithPrivateStyle:v11];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [(UIView *)v12 setGroupName:v14];

    [(PUCropMaskView *)self addSubview:v12];
    [(PUCropMaskView *)self sendSubviewToBack:v12];
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x1E69DD250]);
    [(PUCropMaskView *)self frame];
    v12 = [v15 initWithFrame:?];
    v16 = +[PUInterfaceManager currentTheme];
    photoEditingBackgroundColor2 = [v16 photoEditingBackgroundColor];
    [(UIView *)v12 setBackgroundColor:photoEditingBackgroundColor2];

    [(UIView *)v12 setAutoresizingMask:18];
    [(PUCropMaskView *)self addSubview:v12];
  }

  v18 = self->_opaqueView;
  self->_opaqueView = v12;
}

- (PUCropMaskView)initWithFrame:(CGRect)frame
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PUCropMaskView;
  v3 = [(PUCropMaskView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PUCropMaskView *)v3 _updateColor];
    v9[0] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v6 = [(PUCropMaskView *)v4 registerForTraitChanges:v5 withAction:sel_traitEnvironment_didChangeTraitCollection_];
  }

  return v4;
}

@end