@interface PXSharedLibraryInvitationContentView
- (PXSharedLibraryInvitationContentView)initWithFrame:(CGRect)a3;
- (id)_createCombinedImage:(id)a3 displayScale:(double)a4 isRTL:(BOOL)a5;
- (void)_updateImageViewWithImage:(id)a3 owner:(id)a4;
- (void)_updateTextLabel;
- (void)_updateTitleLabel;
- (void)setOwner:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PXSharedLibraryInvitationContentView

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXSharedLibraryInvitationContentView;
  [(PXSharedLibraryInvitationContentView *)&v4 traitCollectionDidChange:a3];
  [(PXSharedLibraryInvitationContentView *)self _updateTitleLabel];
  [(PXSharedLibraryInvitationContentView *)self _updateTextLabel];
}

- (void)setOwner:(id)a3
{
  v5 = a3;
  if (self->_owner != v5)
  {
    objc_storeStrong(&self->_owner, a3);
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

- (id)_createCombinedImage:(id)a3 displayScale:(double)a4 isRTL:(BOOL)a5
{
  v5 = a5;
  v7 = a4 * 60.0;
  v8 = a4 * 22.0;
  v9 = a4 * 6.0;
  v10 = a3;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v12 = CGBitmapContextCreate(0, v7, v7, 8uLL, 0, DeviceRGB, 1u);
  CGColorSpaceRelease(DeviceRGB);
  v13 = [v10 CGImage];

  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v7;
  v21.size.height = v7;
  CGContextDrawImage(v12, v21, v13);
  CGContextResetClip(v12);
  v14 = [MEMORY[0x1E69DC888] clearColor];
  CGContextSetFillColorWithColor(v12, [v14 CGColor]);

  CGContextSetBlendMode(v12, kCGBlendModeDestinationIn);
  v15 = 40.0;
  if (v5)
  {
    v15 = -2.0;
  }

  v22.origin.x = v15 * a4;
  v22.origin.y = a4 * -2.0;
  v22.size.width = v8;
  v22.size.height = v8;
  v16 = CGPathCreateWithRoundedRect(v22, v9, v9, 0);
  CGContextAddPath(v12, v16);
  CGContextFillPath(v12);
  CGContextBeginPath(v12);
  CGPathRelease(v16);
  Image = CGBitmapContextCreateImage(v12);
  CGContextRelease(v12);
  v18 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image scale:0 orientation:a4];
  CGImageRelease(Image);

  return v18;
}

- (void)_updateTextLabel
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(PXSharedLibraryInvitationContentView *)self owner];
  v4 = PXSharedLibraryFullNameForParticipant(v3);

  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v9 = *MEMORY[0x1E69DB648];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = PXSharedLibraryInvitationTitleForParticipantName(v4, v6);
  v8 = [(PXSharedLibraryInvitationContentView *)self textLabel];
  [v8 setAttributedText:v7];
}

- (void)_updateTitleLabel
{
  v4 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDD10] withSymbolicTraits:2 options:0];
  v3 = [(PXSharedLibraryInvitationContentView *)self titleLabel];
  [v3 setFont:v4];
}

- (void)_updateImageViewWithImage:(id)a3 owner:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    v7 = [(PXSharedLibraryInvitationContentView *)self owner];

    if (v7 == v6)
    {
      v8 = [(PXSharedLibraryInvitationContentView *)self imageView];
      [v8 setImage:v9];

      [(PXSharedLibraryInvitationContentView *)self setNeedsLayout];
    }
  }
}

- (PXSharedLibraryInvitationContentView)initWithFrame:(CGRect)a3
{
  v97[2] = *MEMORY[0x1E69E9840];
  v95.receiver = self;
  v95.super_class = PXSharedLibraryInvitationContentView;
  v3 = [(PXSharedLibraryInvitationContentView *)&v95 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v14 = [v13 localizedUppercaseString];
    [(UILabel *)v3->_titleLabel setText:v14];

    v15 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_titleLabel setTextColor:v15];

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
    v27 = [(UIImageView *)v3->_imageView topAnchor];
    v28 = [(PXSharedLibraryInvitationContentView *)v3 topAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:20.0];

    v88 = v29;
    LODWORD(v30) = 1132068864;
    [v29 setPriority:v30];
    v31 = [(PXSharedLibraryInvitationContentView *)v3 bottomAnchor];
    v32 = [(UIImageView *)v3->_imageView bottomAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:20.0];

    v82 = v33;
    LODWORD(v34) = 1132068864;
    [v33 setPriority:v34];
    v35 = [(UIImageView *)v3->_imageView topAnchor];
    v36 = [(PXSharedLibraryInvitationContentView *)v3 topAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:5.0];

    v69 = v37;
    LODWORD(v38) = 1132068864;
    [v37 setPriority:v38];
    v39 = [(PXSharedLibraryInvitationContentView *)v3 bottomAnchor];
    v40 = [(UIImageView *)v3->_imageView bottomAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:5.0];

    v64 = v41;
    LODWORD(v42) = 1132068864;
    [v41 setPriority:v42];
    v74 = MEMORY[0x1E696ACD8];
    v92 = [(UIImageView *)v3->_imageView widthAnchor];
    v91 = [v92 constraintEqualToConstant:60.0];
    v96[0] = v91;
    v90 = [(UIImageView *)v3->_imageView heightAnchor];
    v89 = [v90 constraintEqualToConstant:60.0];
    v96[1] = v89;
    v87 = [(UIImageView *)v3->_imageView leadingAnchor];
    v86 = [(PXSharedLibraryInvitationContentView *)v3 leadingAnchor];
    v85 = [v87 constraintEqualToAnchor:v86 constant:20.0];
    v96[2] = v85;
    v84 = [(UIImageView *)v3->_imageView topAnchor];
    v83 = [(PXSharedLibraryInvitationContentView *)v3 topAnchor];
    v81 = [v84 constraintGreaterThanOrEqualToAnchor:v83 constant:20.0];
    v96[3] = v81;
    v96[4] = v29;
    v80 = [(PXSharedLibraryInvitationContentView *)v3 centerYAnchor];
    v79 = [(UIImageView *)v3->_imageView centerYAnchor];
    v78 = [v80 constraintEqualToAnchor:v79];
    v96[5] = v78;
    v77 = [(PXSharedLibraryInvitationContentView *)v3 bottomAnchor];
    v76 = [(UIImageView *)v3->_imageView bottomAnchor];
    v75 = [v77 constraintGreaterThanOrEqualToAnchor:v76 constant:20.0];
    v96[6] = v75;
    v96[7] = v33;
    v73 = [(UIImageView *)v3->_badgeView widthAnchor];
    v72 = [v73 constraintEqualToConstant:24.0];
    v96[8] = v72;
    v71 = [(UIImageView *)v3->_badgeView heightAnchor];
    v70 = [v71 constraintEqualToConstant:24.0];
    v96[9] = v70;
    v68 = [(UIImageView *)v3->_badgeView trailingAnchor];
    v67 = [(UIImageView *)v3->_imageView trailingAnchor];
    v66 = [v68 constraintEqualToAnchor:v67 constant:4.0];
    v96[10] = v66;
    v63 = [(UIImageView *)v3->_badgeView bottomAnchor];
    v62 = [(UIImageView *)v3->_imageView bottomAnchor];
    v61 = [v63 constraintEqualToAnchor:v62 constant:4.0];
    v96[11] = v61;
    v60 = [v26 leadingAnchor];
    v59 = [(UIImageView *)v3->_imageView trailingAnchor];
    v58 = [v60 constraintEqualToAnchor:v59 constant:12.0];
    v96[12] = v58;
    v57 = [v26 topAnchor];
    v56 = [(PXSharedLibraryInvitationContentView *)v3 topAnchor];
    v55 = [v57 constraintGreaterThanOrEqualToAnchor:v56 constant:5.0];
    v96[13] = v55;
    v96[14] = v37;
    v54 = [(PXSharedLibraryInvitationContentView *)v3 centerYAnchor];
    v43 = v26;
    v44 = [v26 centerYAnchor];
    v45 = [v54 constraintEqualToAnchor:v44];
    v96[15] = v45;
    v46 = [(PXSharedLibraryInvitationContentView *)v3 bottomAnchor];
    v65 = v43;
    v47 = [v43 bottomAnchor];
    v48 = [v46 constraintGreaterThanOrEqualToAnchor:v47 constant:5.0];
    v96[16] = v48;
    v96[17] = v41;
    v49 = [(PXSharedLibraryInvitationContentView *)v3 trailingAnchor];
    v50 = [v43 trailingAnchor];
    v51 = [v49 constraintGreaterThanOrEqualToAnchor:v50];
    v96[18] = v51;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:19];
    [v74 activateConstraints:v52];
  }

  return v3;
}

@end