@interface PUPhotoEditApertureButton
- (CGRect)_pointerRect;
- (PUPhotoEditApertureButton)initWithFrame:(CGRect)frame;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
@end

@implementation PUPhotoEditApertureButton

- (CGRect)_pointerRect
{
  PXEdgeInsetsMake();
  [(PUPhotoEditApertureButton *)self tappableEdgeInsets];
  [(PUPhotoEditApertureButton *)self frame];
  PXEdgeInsetsInsetRect();
  PXEdgeInsetsInsetRect();
  v7 = v6 + v5 * 0.5 + -18.5;
  v8 = 37.0;
  result.size.height = v8;
  result.size.width = v4;
  result.origin.y = v7;
  result.origin.x = v3;
  return result;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self];
  v6 = [MEMORY[0x1E69DCDA0] effectWithPreview:v5];
  [(PUPhotoEditApertureButton *)self _pointerRect];
  v7 = [MEMORY[0x1E69DCDC8] shapeWithRoundedRect:? cornerRadius:?];
  v8 = [MEMORY[0x1E69DCDD0] styleWithEffect:v6 shape:v7];

  return v8;
}

- (PUPhotoEditApertureButton)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PUPhotoEditApertureButton;
  v3 = [(PUPhotoEditApertureButton *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v3];
    [(PUPhotoEditApertureButton *)v3 addInteraction:v4];
    v5 = +[PUInterfaceManager currentTheme];
    photoEditingToolbarButtonSelectedColor = [v5 photoEditingToolbarButtonSelectedColor];
    [(PUPhotoEditApertureButton *)v3 setTintColor:photoEditingToolbarButtonSelectedColor];
  }

  return v3;
}

@end