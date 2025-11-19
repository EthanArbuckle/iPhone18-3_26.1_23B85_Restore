@interface PXPeopleBootstrapCollectionViewCell
+ (id)cloudBadgeImage;
- (BOOL)_isRTL;
- (CGSize)checkmarkImageSize;
- (PXPeopleBootstrapCollectionViewCell)initWithFrame:(CGRect)a3;
- (UIImage)image;
- (void)_updateCellSizing;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setConfirmed:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setImage:(id)a3 contentsRect:(CGRect)a4;
- (void)setIsMergeCandidate:(BOOL)a3;
- (void)setIsVerified:(BOOL)a3;
- (void)setPresentationStatus:(unint64_t)a3;
@end

@implementation PXPeopleBootstrapCollectionViewCell

- (CGSize)checkmarkImageSize
{
  width = self->_checkmarkImageSize.width;
  height = self->_checkmarkImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_updateCellSizing
{
  v3 = [(PXPeopleBootstrapCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v53 = [(PXPeopleBootstrapCollectionViewCell *)self imageView];
  [v53 setFrame:{v5, v7, v9, v11}];
  v12 = *MEMORY[0x1E695F058];
  rect = *(MEMORY[0x1E695F058] + 8);
  v13 = [(PXPeopleBootstrapCollectionViewCell *)self badgeView];
  v14 = [v13 image];
  [v14 size];
  v16 = v15;
  v49 = v17;
  v18 = +[PXPeopleUISettings sharedInstance];
  v19 = [v18 displayBootstrapSuggestionType];

  v20 = [(PXPeopleBootstrapCollectionViewCell *)self traitCollection];
  [v20 displayScale];
  v22 = v21;

  v56.origin.x = v5;
  v56.origin.y = v7;
  v56.size.width = v9;
  v56.size.height = v11;
  v23 = CGRectGetMaxY(v56) - self->_checkmarkImageSize.height + -5.0;
  v57.origin.x = v5;
  v54 = v7;
  v57.origin.y = v7;
  v57.size.width = v9;
  v57.size.height = v11;
  MaxY = CGRectGetMaxY(v57);
  v48 = v12;
  v58.origin.x = v12;
  v58.origin.y = rect;
  v58.size.width = v16;
  v58.size.height = v49;
  Height = CGRectGetHeight(v58);
  [PXPeopleFaceCropManager roundedCornerRadiusForTargetSize:v9 displayScale:v11, v22];
  v26 = v25;
  v27 = [(PXPeopleBootstrapCollectionViewCell *)self layer];
  [v27 setCornerRadius:v26];

  v28 = [(PXPeopleBootstrapCollectionViewCell *)self _isRTL];
  v29 = 5.0;
  if (!v28)
  {
    v59.origin.x = v5;
    v59.origin.y = v54;
    v59.size.width = v9;
    v59.size.height = v11;
    v29 = CGRectGetMaxX(v59) - self->_checkmarkImageSize.width + -5.0;
  }

  v50 = MaxY + -5.0;
  [(PXPeopleBootstrapCollectionViewCell *)self checkmarkImageSize];
  v31 = v30;
  v33 = v32;
  v34 = [(PXPeopleBootstrapCollectionViewCell *)self selectedCheckmarkView];
  [v34 setFrame:{v29, v23, v31, v33}];

  v35 = [(PXPeopleBootstrapCollectionViewCell *)self unselectedCheckmarkView];
  [v35 setFrame:{v29, v23, v31, v33}];

  if (v19)
  {
    if ([(PXPeopleBootstrapCollectionViewCell *)self isMergeCandidate]&& [(PXPeopleBootstrapCollectionViewCell *)self isVerified])
    {
      v36 = [MEMORY[0x1E69DC888] blueColor];
    }

    else
    {
      if ([(PXPeopleBootstrapCollectionViewCell *)self isMergeCandidate])
      {
        [MEMORY[0x1E69DC888] orangeColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] greenColor];
      }
      v36 = ;
    }

    v37 = v36;
    v38 = [v36 CGColor];

    v39 = [(PXPeopleBootstrapCollectionViewCell *)self layer];
    [v39 setBorderColor:v38];

    v40 = [(PXPeopleBootstrapCollectionViewCell *)self layer];
    [v40 setBorderWidth:2.0];
  }

  v41 = v5;
  v42 = v54;
  v43 = v9;
  v44 = v11;
  if (v28)
  {
    v45 = CGRectGetMinX(*&v41) + 5.0;
    v46 = v16;
  }

  else
  {
    v47 = CGRectGetMaxX(*&v41) + -5.0;
    v60.origin.x = v48;
    v60.origin.y = v50 - Height;
    v46 = v16;
    v60.size.width = v16;
    v60.size.height = v49;
    v45 = v47 - CGRectGetWidth(v60);
  }

  [v13 setFrame:{v45, v50 - Height, v46, v49}];
}

- (BOOL)_isRTL
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection] == 1;

  return v3;
}

- (void)setConfirmed:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXPeopleBootstrapCollectionViewCell *)self selectedCheckmarkView];
  [v5 setHidden:v3 ^ 1];

  v6 = [(PXPeopleBootstrapCollectionViewCell *)self unselectedCheckmarkView];
  [v6 setHidden:v3];
}

- (void)setIsVerified:(BOOL)a3
{
  if (self->_isVerified != a3)
  {
    self->_isVerified = a3;
    [(PXPeopleBootstrapCollectionViewCell *)self _updateCellSizing];
  }
}

- (void)setIsMergeCandidate:(BOOL)a3
{
  if (self->_isMergeCandidate != a3)
  {
    self->_isMergeCandidate = a3;
    [(PXPeopleBootstrapCollectionViewCell *)self _updateCellSizing];
  }
}

- (void)setPresentationStatus:(unint64_t)a3
{
  if (self->_presentationStatus != a3)
  {
    self->_presentationStatus = a3;
    v6 = [(PXPeopleBootstrapCollectionViewCell *)self badgeView];
    v15 = v6;
    if (a3 == 3)
    {
      v8 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
      v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.circle.fill"];
      v10 = [v9 imageWithSymbolConfiguration:v8];

      v11 = [MEMORY[0x1E69DC888] systemGray2Color];
      [v15 setTintColor:v11];

      [v15 setImage:v10];
      [v15 setHidden:0];
      [(PXPeopleBootstrapCollectionViewCell *)self _updateCellSizing];
    }

    else if (a3 == 1)
    {
      v7 = +[PXPeopleBootstrapCollectionViewCell cloudBadgeImage];
      [v15 setImage:v7];

      [v15 setHidden:0];
      [(PXPeopleBootstrapCollectionViewCell *)self _updateCellSizing];
    }

    else
    {
      [v6 setHidden:1];
    }

    v12 = [v15 isHidden];
    v13 = [(PXPeopleBootstrapCollectionViewCell *)self selectedCheckmarkView];
    [v13 setHidden:v12 ^ 1u];

    v14 = [(PXPeopleBootstrapCollectionViewCell *)self unselectedCheckmarkView];
    [v14 setHidden:v12 ^ 1u];
  }
}

- (UIImage)image
{
  v2 = [(PXPeopleBootstrapCollectionViewCell *)self imageView];
  v3 = [v2 image];

  return v3;
}

- (void)setImage:(id)a3 contentsRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (a3)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  v10 = a3;
  v12 = [(PXPeopleBootstrapCollectionViewCell *)self imageView];
  [v12 setImage:v10];

  v11 = [v12 layer];
  [v11 setContentsRect:{x, y, width, height}];

  [(PXPeopleBootstrapCollectionViewCell *)self setPresentationStatus:v9];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = PXPeopleBootstrapCollectionViewCell;
  [(PXPeopleBootstrapCollectionViewCell *)&v4 prepareForReuse];
  [(PXPeopleBootstrapCollectionViewCell *)self setImageRequest:0];
  [(PXPeopleBootstrapCollectionViewCell *)self setIsMergeCandidate:0];
  [(PXPeopleBootstrapCollectionViewCell *)self setIsVerified:0];
  v3 = [(PXPeopleBootstrapCollectionViewCell *)self imageView];
  [v3 setImage:0];

  [(PXPeopleBootstrapCollectionViewCell *)self setPresentationStatus:0];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = PXPeopleBootstrapCollectionViewCell;
  [(PXPeopleBootstrapCollectionViewCell *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(PXPeopleBootstrapCollectionViewCell *)self _updateCellSizing];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXPeopleBootstrapCollectionViewCell;
  [(PXPeopleBootstrapCollectionViewCell *)&v3 layoutSubviews];
  [(PXPeopleBootstrapCollectionViewCell *)self _updateCellSizing];
}

- (PXPeopleBootstrapCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v32.receiver = self;
  v32.super_class = PXPeopleBootstrapCollectionViewCell;
  v5 = [(PXPeopleBootstrapCollectionViewCell *)&v32 initWithFrame:a3.origin.x, a3.origin.y];
  v6 = v5;
  if (v5)
  {
    v7 = [(PXPeopleBootstrapCollectionViewCell *)v5 contentView];
    v6->_presentationStatus = 0;
    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{0.0, 0.0, width, height}];
    imageView = v6->_imageView;
    v6->_imageView = v8;

    [(UIImageView *)v6->_imageView setContentMode:1];
    [(UIImageView *)v6->_imageView setAccessibilityIgnoresInvertColors:1];
    v10 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    [(UIImageView *)v6->_imageView setBackgroundColor:v10];

    [v7 addSubview:v6->_imageView];
    v11 = MEMORY[0x1E69DD250];
    v12 = [MEMORY[0x1E69DC888] systemBlueColor];
    v13 = [v11 px_circularGlyphViewWithName:@"checkmark.circle" backgroundColor:v12];
    selectedCheckmarkView = v6->_selectedCheckmarkView;
    v6->_selectedCheckmarkView = v13;

    [(UIView *)v6->_selectedCheckmarkView setHidden:1];
    [(UIView *)v6->_selectedCheckmarkView setUserInteractionEnabled:0];
    [(UIView *)v6->_selectedCheckmarkView setAccessibilityIgnoresInvertColors:1];
    v15 = MEMORY[0x1E69DD250];
    v16 = [MEMORY[0x1E69DC888] clearColor];
    v17 = [v15 px_circularGlyphViewWithName:@"circle" backgroundColor:v16];
    unselectedCheckmarkView = v6->_unselectedCheckmarkView;
    v6->_unselectedCheckmarkView = v17;

    [(UIView *)v6->_unselectedCheckmarkView setHidden:1];
    [(UIView *)v6->_unselectedCheckmarkView setUserInteractionEnabled:0];
    [(UIView *)v6->_unselectedCheckmarkView setAccessibilityIgnoresInvertColors:1];
    [(UIView *)v6->_selectedCheckmarkView frame];
    p_width = &v6->_checkmarkImageSize.width;
    v6->_checkmarkImageSize.width = v20;
    v6->_checkmarkImageSize.height = v21;
    [v7 addSubview:v6->_selectedCheckmarkView];
    [v7 addSubview:v6->_unselectedCheckmarkView];
    v22 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    badgeView = v6->_badgeView;
    v6->_badgeView = v22;

    v24 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
    [(UIImageView *)v6->_badgeView setSymbolConfiguration:v24];

    v25 = +[PXPeopleBootstrapCollectionViewCell cloudBadgeImage];
    [(UIImageView *)v6->_badgeView setImage:v25];

    [v7 addSubview:v6->_badgeView];
    [(UIImageView *)v6->_badgeView setHidden:1];
    [(UIImageView *)v6->_badgeView setUserInteractionEnabled:0];
    [(UIImageView *)v6->_badgeView setAccessibilityIgnoresInvertColors:1];
    [(PXPeopleBootstrapCollectionViewCell *)v6 setClipsToBounds:1];
    v33.origin.x = 0.0;
    v33.origin.y = 0.0;
    v33.size.width = width;
    v33.size.height = height;
    v26 = CGRectGetMaxY(v33) - v6->_checkmarkImageSize.height + -5.0;
    if ([(PXPeopleBootstrapCollectionViewCell *)v6 _isRTL])
    {
      v27 = *p_width;
      v28 = 5.0;
    }

    else
    {
      v34.origin.x = 0.0;
      v34.origin.y = 0.0;
      v34.size.width = width;
      v34.size.height = height;
      MaxX = CGRectGetMaxX(v34);
      v27 = *p_width;
      v28 = MaxX - *p_width + -5.0;
    }

    v30 = v6->_checkmarkImageSize.height;
    [(UIView *)v6->_selectedCheckmarkView setFrame:v28, v26, v27, v30];
    [(UIView *)v6->_unselectedCheckmarkView setFrame:v28, v26, v27, v30];
  }

  return v6;
}

+ (id)cloudBadgeImage
{
  if (cloudBadgeImage_onceToken != -1)
  {
    dispatch_once(&cloudBadgeImage_onceToken, &__block_literal_global_251590);
  }

  v3 = cloudBadgeImage_image;

  return v3;
}

void __54__PXPeopleBootstrapCollectionViewCell_cloudBadgeImage__block_invoke()
{
  v3 = [MEMORY[0x1E69DCAB8] px_systemImageNamed:@"icloud.fill"];
  v0 = [MEMORY[0x1E69DC888] whiteColor];
  v1 = [v3 px_tintedImageWithColor:v0];
  v2 = cloudBadgeImage_image;
  cloudBadgeImage_image = v1;
}

@end