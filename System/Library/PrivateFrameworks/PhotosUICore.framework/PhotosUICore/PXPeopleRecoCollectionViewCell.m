@interface PXPeopleRecoCollectionViewCell
- (BOOL)hasImageSet;
- (PXPeopleRecoCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setImage:(id)a3 contentsRect:(CGRect)a4;
- (void)setIsRejected:(BOOL)a3;
@end

@implementation PXPeopleRecoCollectionViewCell

- (BOOL)hasImageSet
{
  v2 = [(PXPeopleRecoCollectionViewCell *)self faceView];
  v3 = [v2 image];
  v4 = v3 != 0;

  return v4;
}

- (void)setImage:(id)a3 contentsRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v11 = [(PXPeopleRecoCollectionViewCell *)self faceView];
  v10 = [v11 layer];
  [v10 setContentsRect:{x, y, width, height}];

  [v11 setImage:v9];
}

- (void)setIsRejected:(BOOL)a3
{
  if (a3)
  {
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle"];
  }

  else
  {
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle"];
    v5 = [MEMORY[0x1E69DC888] systemWhiteColor];
    v6 = [MEMORY[0x1E69DC888] systemBlueColor];
    v8 = [v4 px_tintedCircularImageWithColor:v5 backgroundColor:v6];
  }

  v7 = [(PXPeopleRecoCollectionViewCell *)self checkView];
  [v7 setHidden:0];
  [v7 setImage:v8];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = PXPeopleRecoCollectionViewCell;
  [(PXPeopleRecoCollectionViewCell *)&v12 layoutSubviews];
  [(PXPeopleRecoCollectionViewCell *)self frame];
  v4 = v3;
  v6 = v5;
  v7 = [(PXPeopleRecoCollectionViewCell *)self traitCollection];
  [v7 displayScale];
  [PXPeopleFaceCropManager roundedCornerRadiusForTargetSize:v4 displayScale:v6, v8];
  v10 = v9;
  v11 = [(PXPeopleRecoCollectionViewCell *)self layer];
  [v11 setCornerRadius:v10];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = PXPeopleRecoCollectionViewCell;
  [(PXPeopleRecoCollectionViewCell *)&v5 prepareForReuse];
  v3 = [(PXPeopleRecoCollectionViewCell *)self checkView];
  [v3 setHidden:1];

  v4 = [(PXPeopleRecoCollectionViewCell *)self faceView];
  [v4 setImage:0];
}

- (PXPeopleRecoCollectionViewCell)initWithFrame:(CGRect)a3
{
  v40[8] = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = PXPeopleRecoCollectionViewCell;
  v3 = [(PXPeopleRecoCollectionViewCell *)&v39 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXPeopleRecoCollectionViewCell *)v3 setClipsToBounds:1];
    v5 = [MEMORY[0x1E69DC888] systemGray4Color];
    [(PXPeopleRecoCollectionViewCell *)v4 setBackgroundColor:v5];

    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(UIImageView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PXPeopleRecoCollectionViewCell *)v4 addSubview:v6];
    faceView = v4->_faceView;
    v4->_faceView = v6;
    v8 = v6;

    v9 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v10 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)v9 setTintColor:v10];

    [(UIImageView *)v9 setHidden:1];
    [(UIImageView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PXPeopleRecoCollectionViewCell *)v4 addSubview:v9];
    checkView = v4->_checkView;
    v4->_checkView = v9;
    v12 = v9;

    v27 = MEMORY[0x1E696ACD8];
    v38 = [(UIImageView *)v8 leadingAnchor];
    v37 = [(PXPeopleRecoCollectionViewCell *)v4 leadingAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v40[0] = v36;
    v35 = [(UIImageView *)v8 trailingAnchor];
    v34 = [(PXPeopleRecoCollectionViewCell *)v4 trailingAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v40[1] = v33;
    v32 = [(UIImageView *)v8 topAnchor];
    v31 = [(PXPeopleRecoCollectionViewCell *)v4 topAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v40[2] = v30;
    v29 = [(UIImageView *)v8 bottomAnchor];
    v28 = [(PXPeopleRecoCollectionViewCell *)v4 bottomAnchor];
    v26 = [v29 constraintEqualToAnchor:v28];
    v40[3] = v26;
    v25 = [(UIImageView *)v12 heightAnchor];
    v24 = [v25 constraintEqualToConstant:22.0];
    v40[4] = v24;
    v23 = [(UIImageView *)v12 heightAnchor];
    v22 = [(UIImageView *)v12 widthAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v40[5] = v21;
    v13 = [(UIImageView *)v12 trailingAnchor];
    v14 = [(PXPeopleRecoCollectionViewCell *)v4 trailingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:-7.0];
    v40[6] = v15;
    v16 = [(UIImageView *)v12 bottomAnchor];
    v17 = [(PXPeopleRecoCollectionViewCell *)v4 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:-7.0];
    v40[7] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:8];
    [v27 activateConstraints:v19];
  }

  return v4;
}

@end