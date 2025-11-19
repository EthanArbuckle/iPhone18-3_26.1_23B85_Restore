@interface PUPhotoEditApertureButtonContainer
- (PUPhotoEditApertureButtonContainer)initWithApertureButton:(id)a3;
@end

@implementation PUPhotoEditApertureButtonContainer

- (PUPhotoEditApertureButtonContainer)initWithApertureButton:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = PUPhotoEditApertureButtonContainer;
  v6 = [(PUPhotoEditApertureButtonContainer *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_apertureButton, a3);
    [(PUPhotoEditApertureButtonContainer *)v7 addSubview:v7->_apertureButton];
    v8 = [(PUPhotoEditApertureButtonContainer *)v7 leadingAnchor];
    v9 = [(PUPhotoEditApertureButton *)v7->_apertureButton leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    [v10 setActive:1];

    if (MEMORY[0x1B8C6D660]())
    {
      v11 = [(PUPhotoEditApertureButtonContainer *)v7 trailingAnchor];
      v12 = [(PUPhotoEditApertureButton *)v7->_apertureButton trailingAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];
      [v13 setActive:1];
    }

    else
    {
      v11 = [(PUPhotoEditApertureButtonContainer *)v7 widthAnchor];
      v12 = [v11 constraintEqualToConstant:50.0];
      [v12 setActive:1];
    }

    v14 = [(PUPhotoEditApertureButtonContainer *)v7 topAnchor];
    v15 = [(PUPhotoEditApertureButton *)v7->_apertureButton topAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v16 setActive:1];

    v17 = [(PUPhotoEditApertureButtonContainer *)v7 bottomAnchor];
    v18 = [(PUPhotoEditApertureButton *)v7->_apertureButton bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [v19 setActive:1];

    [(PUPhotoEditApertureButtonContainer *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = v7;
  }

  return v7;
}

@end