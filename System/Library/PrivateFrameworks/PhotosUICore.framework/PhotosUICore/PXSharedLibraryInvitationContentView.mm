@interface PXSharedLibraryInvitationContentView
- (PXSharedLibraryInvitationContentView)initWithFrame:(CGRect)frame;
- (id)_createCombinedImage:(id)image displayScale:(double)scale isRTL:(BOOL)l;
- (void)_updateImageViewWithImage:(id)image owner:(id)owner;
- (void)_updateTextLabel;
- (void)_updateTitleLabel;
- (void)setOwner:(id)owner;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PXSharedLibraryInvitationContentView

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PXSharedLibraryInvitationContentView;
  [(PXSharedLibraryInvitationContentView *)&v4 traitCollectionDidChange:change];
  [(PXSharedLibraryInvitationContentView *)self _updateTitleLabel];
  [(PXSharedLibraryInvitationContentView *)self _updateTextLabel];
}

- (void)setOwner:(id)owner
{
  ownerCopy = owner;
  if (self->_owner != ownerCopy)
  {
    objc_storeStrong(&self->_owner, owner);
    [(PXSharedLibraryInvitationContentView *)self _updateTextLabel];
    objc_initWeak(&location, self);
    PXSizeMakeSquare();
  }
}

void __49__PXSharedLibraryInvitationContentView_setOwner___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained _createCombinedImage:v3 displayScale:*(a1 + 56) isRTL:*(a1 + 48)];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 _updateImageViewWithImage:v6 owner:*(a1 + 32)];
}

- (id)_createCombinedImage:(id)image displayScale:(double)scale isRTL:(BOOL)l
{
  lCopy = l;
  v7 = scale * 60.0;
  v8 = scale * 22.0;
  v9 = scale * 6.0;
  imageCopy = image;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v12 = CGBitmapContextCreate(0, v7, v7, 8uLL, 0, DeviceRGB, 1u);
  CGColorSpaceRelease(DeviceRGB);
  cGImage = [imageCopy CGImage];

  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v7;
  v21.size.height = v7;
  CGContextDrawImage(v12, v21, cGImage);
  CGContextResetClip(v12);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  CGContextSetFillColorWithColor(v12, [clearColor CGColor]);

  CGContextSetBlendMode(v12, kCGBlendModeDestinationIn);
  v15 = 40.0;
  if (lCopy)
  {
    v15 = -2.0;
  }

  v22.origin.x = v15 * scale;
  v22.origin.y = scale * -2.0;
  v22.size.width = v8;
  v22.size.height = v8;
  v16 = CGPathCreateWithRoundedRect(v22, v9, v9, 0);
  CGContextAddPath(v12, v16);
  CGContextFillPath(v12);
  CGContextBeginPath(v12);
  CGPathRelease(v16);
  Image = CGBitmapContextCreateImage(v12);
  CGContextRelease(v12);
  v18 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image scale:0 orientation:scale];
  CGImageRelease(Image);

  return v18;
}

- (void)_updateTextLabel
{
  v10[1] = *MEMORY[0x1E69E9840];
  owner = [(PXSharedLibraryInvitationContentView *)self owner];
  v4 = PXSharedLibraryFullNameForParticipant(owner);

  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v9 = *MEMORY[0x1E69DB648];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = PXSharedLibraryInvitationTitleForParticipantName(v4, v6);
  textLabel = [(PXSharedLibraryInvitationContentView *)self textLabel];
  [textLabel setAttributedText:v7];
}

- (void)_updateTitleLabel
{
  v4 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDD10] withSymbolicTraits:2 options:0];
  titleLabel = [(PXSharedLibraryInvitationContentView *)self titleLabel];
  [titleLabel setFont:v4];
}

- (void)_updateImageViewWithImage:(id)image owner:(id)owner
{
  imageCopy = image;
  ownerCopy = owner;
  if (imageCopy)
  {
    owner = [(PXSharedLibraryInvitationContentView *)self owner];

    if (owner == ownerCopy)
    {
      imageView = [(PXSharedLibraryInvitationContentView *)self imageView];
      [imageView setImage:imageCopy];

      [(PXSharedLibraryInvitationContentView *)self setNeedsLayout];
    }
  }
}

- (PXSharedLibraryInvitationContentView)initWithFrame:(CGRect)frame
{
  v97[2] = *MEMORY[0x1E69E9840];
  v95.receiver = self;
  v95.super_class = PXSharedLibraryInvitationContentView;
  v3 = [(PXSharedLibraryInvitationContentView *)&v95 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v94 = PXSharedLibraryPlaceholderParticipantImageWithPointSize();
    v4 = [(PXSharedLibraryInvitationContentView *)v3 effectiveUserInterfaceLayoutDirection]== 1;
    [(PXSharedLibraryInvitationContentView *)v3 px_screenScale];
    v93 = [(PXSharedLibraryInvitationContentView *)v3 _createCombinedImage:v94 displayScale:v4 isRTL:?];
    v5 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v3->_imageView;
    v3->_imageView = v5;

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_imageView setContentMode:2];
    [(UIImageView *)v3->_imageView setImage:v93];
    [(PXSharedLibraryInvitationContentView *)v3 addSubview:v3->_imageView];
    v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    badgeView = v3->_badgeView;
    v3->_badgeView = v7;

    [(UIImageView *)v3->_badgeView setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"SharedLibrary-20-Rounded"];
    [(UIImageView *)v3->_badgeView setImage:v9];

    [(UIImageView *)v3->_badgeView setContentMode:4];
    [(UIImageView *)v3->_badgeView _setCornerRadius:6.0];
    [(PXSharedLibraryInvitationContentView *)v3 addSubview:v3->_badgeView];
    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v10;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
    [(UILabel *)v3->_titleLabel setFont:v12];

    v13 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_InvitationTitle");
    localizedUppercaseString = [v13 localizedUppercaseString];
    [(UILabel *)v3->_titleLabel setText:localizedUppercaseString];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_titleLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v3->_titleLabel setLineBreakMode:0];
    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    LODWORD(v16) = 1144750080;
    [(UILabel *)v3->_titleLabel setContentCompressionResistancePriority:1 forAxis:v16];
    LODWORD(v17) = 1148846080;
    [(UILabel *)v3->_titleLabel setContentHuggingPriority:1 forAxis:v17];
    v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    textLabel = v3->_textLabel;
    v3->_textLabel = v18;

    [(UILabel *)v3->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [(UILabel *)v3->_textLabel setFont:v20];

    [(UILabel *)v3->_textLabel setLineBreakMode:0];
    [(UILabel *)v3->_textLabel setNumberOfLines:0];
    LODWORD(v21) = 1144750080;
    [(UILabel *)v3->_textLabel setContentCompressionResistancePriority:1 forAxis:v21];
    LODWORD(v22) = 1148846080;
    [(UILabel *)v3->_textLabel setContentHuggingPriority:1 forAxis:v22];
    v23 = objc_alloc(MEMORY[0x1E69DCF90]);
    v97[0] = v3->_titleLabel;
    v97[1] = v3->_textLabel;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:2];
    v25 = [v23 initWithArrangedSubviews:v24];

    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v25 setAxis:1];
    v26 = v25;
    [(PXSharedLibraryInvitationContentView *)v3 addSubview:v25];
    topAnchor = [(UIImageView *)v3->_imageView topAnchor];
    topAnchor2 = [(PXSharedLibraryInvitationContentView *)v3 topAnchor];
    v29 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];

    v88 = v29;
    LODWORD(v30) = 1132068864;
    [v29 setPriority:v30];
    bottomAnchor = [(PXSharedLibraryInvitationContentView *)v3 bottomAnchor];
    bottomAnchor2 = [(UIImageView *)v3->_imageView bottomAnchor];
    v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:20.0];

    v82 = v33;
    LODWORD(v34) = 1132068864;
    [v33 setPriority:v34];
    topAnchor3 = [(UIImageView *)v3->_imageView topAnchor];
    topAnchor4 = [(PXSharedLibraryInvitationContentView *)v3 topAnchor];
    v37 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:5.0];

    v69 = v37;
    LODWORD(v38) = 1132068864;
    [v37 setPriority:v38];
    bottomAnchor3 = [(PXSharedLibraryInvitationContentView *)v3 bottomAnchor];
    bottomAnchor4 = [(UIImageView *)v3->_imageView bottomAnchor];
    v41 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:5.0];

    v64 = v41;
    LODWORD(v42) = 1132068864;
    [v41 setPriority:v42];
    v74 = MEMORY[0x1E696ACD8];
    widthAnchor = [(UIImageView *)v3->_imageView widthAnchor];
    v91 = [widthAnchor constraintEqualToConstant:60.0];
    v96[0] = v91;
    heightAnchor = [(UIImageView *)v3->_imageView heightAnchor];
    v89 = [heightAnchor constraintEqualToConstant:60.0];
    v96[1] = v89;
    leadingAnchor = [(UIImageView *)v3->_imageView leadingAnchor];
    leadingAnchor2 = [(PXSharedLibraryInvitationContentView *)v3 leadingAnchor];
    v85 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    v96[2] = v85;
    topAnchor5 = [(UIImageView *)v3->_imageView topAnchor];
    topAnchor6 = [(PXSharedLibraryInvitationContentView *)v3 topAnchor];
    v81 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor6 constant:20.0];
    v96[3] = v81;
    v96[4] = v29;
    centerYAnchor = [(PXSharedLibraryInvitationContentView *)v3 centerYAnchor];
    centerYAnchor2 = [(UIImageView *)v3->_imageView centerYAnchor];
    v78 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v96[5] = v78;
    bottomAnchor5 = [(PXSharedLibraryInvitationContentView *)v3 bottomAnchor];
    bottomAnchor6 = [(UIImageView *)v3->_imageView bottomAnchor];
    v75 = [bottomAnchor5 constraintGreaterThanOrEqualToAnchor:bottomAnchor6 constant:20.0];
    v96[6] = v75;
    v96[7] = v33;
    widthAnchor2 = [(UIImageView *)v3->_badgeView widthAnchor];
    v72 = [widthAnchor2 constraintEqualToConstant:24.0];
    v96[8] = v72;
    heightAnchor2 = [(UIImageView *)v3->_badgeView heightAnchor];
    v70 = [heightAnchor2 constraintEqualToConstant:24.0];
    v96[9] = v70;
    trailingAnchor = [(UIImageView *)v3->_badgeView trailingAnchor];
    trailingAnchor2 = [(UIImageView *)v3->_imageView trailingAnchor];
    v66 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:4.0];
    v96[10] = v66;
    bottomAnchor7 = [(UIImageView *)v3->_badgeView bottomAnchor];
    bottomAnchor8 = [(UIImageView *)v3->_imageView bottomAnchor];
    v61 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:4.0];
    v96[11] = v61;
    leadingAnchor3 = [v26 leadingAnchor];
    trailingAnchor3 = [(UIImageView *)v3->_imageView trailingAnchor];
    v58 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:12.0];
    v96[12] = v58;
    topAnchor7 = [v26 topAnchor];
    topAnchor8 = [(PXSharedLibraryInvitationContentView *)v3 topAnchor];
    v55 = [topAnchor7 constraintGreaterThanOrEqualToAnchor:topAnchor8 constant:5.0];
    v96[13] = v55;
    v96[14] = v37;
    centerYAnchor3 = [(PXSharedLibraryInvitationContentView *)v3 centerYAnchor];
    v43 = v26;
    centerYAnchor4 = [v26 centerYAnchor];
    v45 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v96[15] = v45;
    bottomAnchor9 = [(PXSharedLibraryInvitationContentView *)v3 bottomAnchor];
    v65 = v43;
    bottomAnchor10 = [v43 bottomAnchor];
    v48 = [bottomAnchor9 constraintGreaterThanOrEqualToAnchor:bottomAnchor10 constant:5.0];
    v96[16] = v48;
    v96[17] = v41;
    trailingAnchor4 = [(PXSharedLibraryInvitationContentView *)v3 trailingAnchor];
    trailingAnchor5 = [v43 trailingAnchor];
    v51 = [trailingAnchor4 constraintGreaterThanOrEqualToAnchor:trailingAnchor5];
    v96[18] = v51;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:19];
    [v74 activateConstraints:v52];
  }

  return v3;
}

@end