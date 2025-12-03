@interface PXPeopleRecoCollectionViewCell
- (BOOL)hasImageSet;
- (PXPeopleRecoCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setImage:(id)image contentsRect:(CGRect)rect;
- (void)setIsRejected:(BOOL)rejected;
@end

@implementation PXPeopleRecoCollectionViewCell

- (BOOL)hasImageSet
{
  faceView = [(PXPeopleRecoCollectionViewCell *)self faceView];
  image = [faceView image];
  v4 = image != 0;

  return v4;
}

- (void)setImage:(id)image contentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  imageCopy = image;
  faceView = [(PXPeopleRecoCollectionViewCell *)self faceView];
  layer = [faceView layer];
  [layer setContentsRect:{x, y, width, height}];

  [faceView setImage:imageCopy];
}

- (void)setIsRejected:(BOOL)rejected
{
  if (rejected)
  {
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle"];
  }

  else
  {
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle"];
    systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    v8 = [v4 px_tintedCircularImageWithColor:systemWhiteColor backgroundColor:systemBlueColor];
  }

  checkView = [(PXPeopleRecoCollectionViewCell *)self checkView];
  [checkView setHidden:0];
  [checkView setImage:v8];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = PXPeopleRecoCollectionViewCell;
  [(PXPeopleRecoCollectionViewCell *)&v12 layoutSubviews];
  [(PXPeopleRecoCollectionViewCell *)self frame];
  v4 = v3;
  v6 = v5;
  traitCollection = [(PXPeopleRecoCollectionViewCell *)self traitCollection];
  [traitCollection displayScale];
  [PXPeopleFaceCropManager roundedCornerRadiusForTargetSize:v4 displayScale:v6, v8];
  v10 = v9;
  layer = [(PXPeopleRecoCollectionViewCell *)self layer];
  [layer setCornerRadius:v10];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = PXPeopleRecoCollectionViewCell;
  [(PXPeopleRecoCollectionViewCell *)&v5 prepareForReuse];
  checkView = [(PXPeopleRecoCollectionViewCell *)self checkView];
  [checkView setHidden:1];

  faceView = [(PXPeopleRecoCollectionViewCell *)self faceView];
  [faceView setImage:0];
}

- (PXPeopleRecoCollectionViewCell)initWithFrame:(CGRect)frame
{
  v40[8] = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = PXPeopleRecoCollectionViewCell;
  v3 = [(PXPeopleRecoCollectionViewCell *)&v39 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXPeopleRecoCollectionViewCell *)v3 setClipsToBounds:1];
    systemGray4Color = [MEMORY[0x1E69DC888] systemGray4Color];
    [(PXPeopleRecoCollectionViewCell *)v4 setBackgroundColor:systemGray4Color];

    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(UIImageView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PXPeopleRecoCollectionViewCell *)v4 addSubview:v6];
    faceView = v4->_faceView;
    v4->_faceView = v6;
    v8 = v6;

    v9 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)v9 setTintColor:whiteColor];

    [(UIImageView *)v9 setHidden:1];
    [(UIImageView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PXPeopleRecoCollectionViewCell *)v4 addSubview:v9];
    checkView = v4->_checkView;
    v4->_checkView = v9;
    v12 = v9;

    v27 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UIImageView *)v8 leadingAnchor];
    leadingAnchor2 = [(PXPeopleRecoCollectionViewCell *)v4 leadingAnchor];
    v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v40[0] = v36;
    trailingAnchor = [(UIImageView *)v8 trailingAnchor];
    trailingAnchor2 = [(PXPeopleRecoCollectionViewCell *)v4 trailingAnchor];
    v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v40[1] = v33;
    topAnchor = [(UIImageView *)v8 topAnchor];
    topAnchor2 = [(PXPeopleRecoCollectionViewCell *)v4 topAnchor];
    v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v40[2] = v30;
    bottomAnchor = [(UIImageView *)v8 bottomAnchor];
    bottomAnchor2 = [(PXPeopleRecoCollectionViewCell *)v4 bottomAnchor];
    v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v40[3] = v26;
    heightAnchor = [(UIImageView *)v12 heightAnchor];
    v24 = [heightAnchor constraintEqualToConstant:22.0];
    v40[4] = v24;
    heightAnchor2 = [(UIImageView *)v12 heightAnchor];
    widthAnchor = [(UIImageView *)v12 widthAnchor];
    v21 = [heightAnchor2 constraintEqualToAnchor:widthAnchor];
    v40[5] = v21;
    trailingAnchor3 = [(UIImageView *)v12 trailingAnchor];
    trailingAnchor4 = [(PXPeopleRecoCollectionViewCell *)v4 trailingAnchor];
    v15 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-7.0];
    v40[6] = v15;
    bottomAnchor3 = [(UIImageView *)v12 bottomAnchor];
    bottomAnchor4 = [(PXPeopleRecoCollectionViewCell *)v4 bottomAnchor];
    v18 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-7.0];
    v40[7] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:8];
    [v27 activateConstraints:v19];
  }

  return v4;
}

@end