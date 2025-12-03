@interface PUPhotoEditApertureButtonContainer
- (PUPhotoEditApertureButtonContainer)initWithApertureButton:(id)button;
@end

@implementation PUPhotoEditApertureButtonContainer

- (PUPhotoEditApertureButtonContainer)initWithApertureButton:(id)button
{
  buttonCopy = button;
  v22.receiver = self;
  v22.super_class = PUPhotoEditApertureButtonContainer;
  v6 = [(PUPhotoEditApertureButtonContainer *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_apertureButton, button);
    [(PUPhotoEditApertureButtonContainer *)v7 addSubview:v7->_apertureButton];
    leadingAnchor = [(PUPhotoEditApertureButtonContainer *)v7 leadingAnchor];
    leadingAnchor2 = [(PUPhotoEditApertureButton *)v7->_apertureButton leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v10 setActive:1];

    if (MEMORY[0x1B8C6D660]())
    {
      trailingAnchor = [(PUPhotoEditApertureButtonContainer *)v7 trailingAnchor];
      trailingAnchor2 = [(PUPhotoEditApertureButton *)v7->_apertureButton trailingAnchor];
      v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [v13 setActive:1];
    }

    else
    {
      trailingAnchor = [(PUPhotoEditApertureButtonContainer *)v7 widthAnchor];
      trailingAnchor2 = [trailingAnchor constraintEqualToConstant:50.0];
      [trailingAnchor2 setActive:1];
    }

    topAnchor = [(PUPhotoEditApertureButtonContainer *)v7 topAnchor];
    topAnchor2 = [(PUPhotoEditApertureButton *)v7->_apertureButton topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v16 setActive:1];

    bottomAnchor = [(PUPhotoEditApertureButtonContainer *)v7 bottomAnchor];
    bottomAnchor2 = [(PUPhotoEditApertureButton *)v7->_apertureButton bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v19 setActive:1];

    [(PUPhotoEditApertureButtonContainer *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = v7;
  }

  return v7;
}

@end