@interface PXPeopleScalableAvatarView
- (PXPeopleScalableAvatarView)initWithFrame:(CGRect)frame;
- (void)_updateImageAndWait:(BOOL)wait;
- (void)layoutSubviews;
- (void)setCornerStyle:(int64_t)style;
- (void)setFace:(id)face;
- (void)setImageViewCornerRadius:(double)radius;
- (void)setPerson:(id)person;
- (void)setPersonAndWaitForImage:(id)image;
@end

@implementation PXPeopleScalableAvatarView

- (void)_updateImageAndWait:(BOOL)wait
{
  person = [(PXPeopleScalableAvatarView *)self person];
  face = [(PXPeopleScalableAvatarView *)self face];
  if (person | face)
  {
    [(PXPeopleScalableAvatarView *)self bounds];
    x = v25.origin.x;
    y = v25.origin.y;
    width = v25.size.width;
    height = v25.size.height;
    v10 = CGRectGetWidth(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v11 = CGRectGetHeight(v26);
    [(PXSmartScaleView *)self displayScale];
    v13 = v12;
    v14 = v10 - v11;
    if (v10 - v11 < 0.0)
    {
      v14 = -(v10 - v11);
    }

    if (v14 >= 2.0)
    {
      imageView = [(PXPeopleScalableAvatarView *)self imageView];
      [imageView setContentMode:2];
    }

    else
    {
      if (v10 >= v11)
      {
        v10 = v11;
      }

      v11 = v10;
      height = v10;
      width = v10;
    }

    self->_imagePixelSize.width = v10;
    self->_imagePixelSize.height = v11;
    cornerStyle = [(PXPeopleScalableAvatarView *)self cornerStyle];
    if (cornerStyle == 1)
    {
      [PXPeopleFaceCropManager roundedCornerRadiusForTargetSize:width displayScale:height, v13];
    }

    else
    {
      v17 = 0.0;
      if (cornerStyle == 2)
      {
        v17 = width * 0.5;
        if (width * 0.5 < 0.0)
        {
          v17 = 0.0;
        }
      }
    }

    [(PXPeopleScalableAvatarView *)self setImageViewCornerRadius:v17];
    if (height > 0.0 && width > 0.0)
    {
      v18 = [PXPeopleFaceCropFetchOptions alloc];
      if (person)
      {
        v19 = [(PXPeopleFaceCropFetchOptions *)v18 initWithPerson:person targetSize:width displayScale:height, v13];
      }

      else
      {
        v19 = [(PXPeopleFaceCropFetchOptions *)v18 initWithFace:face targetSize:width displayScale:height, v13];
      }

      v20 = v19;
      [(PXPeopleFaceCropFetchOptions *)v19 setUseLowMemoryMode:[(PXPeopleScalableAvatarView *)self useLowMemoryMode]];
      [(PXPeopleFaceCropFetchOptions *)v20 setCornerStyle:[(PXPeopleScalableAvatarView *)self cornerStyle]];
      v21 = +[PXPeopleFaceCropManager sharedManager];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __50__PXPeopleScalableAvatarView__updateImageAndWait___block_invoke;
      v22[3] = &unk_1E773FCF0;
      v22[4] = self;
      v23 = person;
      v24 = face;
      [v21 requestFaceCropForOptions:v20 resultHandler:v22];
    }
  }
}

void __50__PXPeopleScalableAvatarView__updateImageAndWait___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [a3 objectForKeyedSubscript:@"PXPeopleContentsRectKey"];
  [objc_claimAutoreleasedReturnValue() CGRectValue];
  *(a1 + 40);
  *(a1 + 48);
  v6 = v5;
  px_dispatch_on_main_queue();
}

void __50__PXPeopleScalableAvatarView__updateImageAndWait___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) person];
  if (v2 == *(a1 + 40))
  {
    v10 = v2;
    v3 = [*(a1 + 32) face];
    v4 = *(a1 + 48);

    if (v3 != v4)
    {
      return;
    }

    v11 = [*(a1 + 32) imageView];
    [v11 setImage:*(a1 + 56)];
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = *(a1 + 80);
    v8 = *(a1 + 88);
    v9 = [v11 layer];
    [v9 setContentsRect:{v5, v6, v7, v8}];

    v2 = v11;
  }
}

- (void)setPersonAndWaitForImage:(id)image
{
  objc_storeStrong(&self->_person, image);

  [(PXPeopleScalableAvatarView *)self _updateImageAndWait:1];
}

- (void)setImageViewCornerRadius:(double)radius
{
  if (self->_imageViewCornerRadius != radius)
  {
    self->_imageViewCornerRadius = radius;
    [(PXPeopleScalableAvatarView *)self setNeedsLayout];
  }
}

- (void)setCornerStyle:(int64_t)style
{
  if (self->_cornerStyle != style)
  {
    self->_cornerStyle = style;
    [(PXPeopleScalableAvatarView *)self updateImage];
  }
}

- (void)setFace:(id)face
{
  objc_storeStrong(&self->_face, face);

  [(PXPeopleScalableAvatarView *)self updateImage];
}

- (void)setPerson:(id)person
{
  objc_storeStrong(&self->_person, person);

  [(PXPeopleScalableAvatarView *)self updateImage];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = PXPeopleScalableAvatarView;
  [(PXPeopleScalableAvatarView *)&v14 layoutSubviews];
  imageView = [(PXPeopleScalableAvatarView *)self imageView];
  [(PXPeopleScalableAvatarView *)self bounds];
  [imageView setFrame:?];
  [(PXPeopleScalableAvatarView *)self imageViewCornerRadius];
  v5 = v4;
  layer = [imageView layer];
  [layer setCornerRadius:v5];

  [(PXPeopleScalableAvatarView *)self bounds];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  v11 = vabdd_f64(CGRectGetHeight(v15), self->_imagePixelSize.height);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v12 = vabdd_f64(CGRectGetWidth(v16), self->_imagePixelSize.width);
  if (v11 > 5.0 || v12 > 5.0)
  {
    [(PXPeopleScalableAvatarView *)self updateImage];
  }
}

- (PXPeopleScalableAvatarView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = PXPeopleScalableAvatarView;
  v7 = [(PXPeopleScalableAvatarView *)&v12 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
    imageView = v7->_imageView;
    v7->_imageView = v8;

    [(UIImageView *)v7->_imageView setAccessibilityIgnoresInvertColors:1];
    v7->_cornerStyle = +[PXPeopleFaceCropFetchOptions recommendedCornerStyleForCurrentAppConfiguration];
    layer = [(UIImageView *)v7->_imageView layer];
    [layer setMasksToBounds:1];

    [(PXPeopleScalableAvatarView *)v7 addSubview:v7->_imageView];
  }

  return v7;
}

@end