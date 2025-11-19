@interface PXSharedLibraryRulesTableViewCell
- (PXSharedLibraryRulesTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateDetailLabel;
- (void)_updateImageView;
- (void)_updateSubtitleLabel;
- (void)_updateTitleLabel;
- (void)setDetail:(id)a3;
- (void)setImage:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation PXSharedLibraryRulesTableViewCell

- (void)setImage:(id)a3
{
  objc_storeStrong(&self->_image, a3);

  [(PXSharedLibraryRulesTableViewCell *)self _updateImageView];
}

- (void)setDetail:(id)a3
{
  v8 = a3;
  v5 = [(PXSharedLibraryRulesTableViewCell *)self detail];
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [v5 isEqualToString:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_detail, a3);
      [(PXSharedLibraryRulesTableViewCell *)self _updateDetailLabel];
      [(PXSharedLibraryRulesTableViewCell *)self _updateSubtitleLabel];
    }
  }
}

- (void)setSubtitle:(id)a3
{
  v8 = a3;
  v5 = [(PXSharedLibraryRulesTableViewCell *)self subtitle];
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [v5 isEqualToString:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_subtitle, a3);
      [(PXSharedLibraryRulesTableViewCell *)self _updateSubtitleLabel];
    }
  }
}

- (void)setTitle:(id)a3
{
  v8 = a3;
  v5 = [(PXSharedLibraryRulesTableViewCell *)self title];
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [v5 isEqualToString:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_title, a3);
      [(PXSharedLibraryRulesTableViewCell *)self _updateTitleLabel];
    }
  }
}

- (void)_updateDetailLabel
{
  v3 = [(PXSharedLibraryRulesTableViewCell *)self detail];
  [(UILabel *)self->_detailLabel setText:v3];

  v4 = [MEMORY[0x1E69DC888] systemBlueColor];
  [(UILabel *)self->_detailLabel setTextColor:v4];

  v5 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)self->_detailLabel setFont:v5];
}

- (void)_updateSubtitleLabel
{
  v3 = [(PXSharedLibraryRulesTableViewCell *)self subtitle];
  [(UILabel *)self->_subtitleLabel setText:v3];

  v4 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_subtitleLabel setTextColor:v4];

  v5 = [(PXSharedLibraryRulesTableViewCell *)self detail];
  [(UILabel *)self->_subtitleLabel setHidden:v5 != 0];

  v6 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDD08] withSymbolicTraits:0x8000 options:2];
  [(UILabel *)self->_subtitleLabel setFont:v6];
  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  [(UILabel *)self->_subtitleLabel setLineBreakMode:0];
  [(PXSharedLibraryRulesTableViewCell *)self setNeedsUpdateConstraints];
}

- (void)_updateTitleLabel
{
  v3 = [(PXSharedLibraryRulesTableViewCell *)self title];
  [(UILabel *)self->_titleLabel setText:v3];

  v4 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v4];

  v5 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] withSymbolicTraits:0x8000 options:2];
  [(UILabel *)self->_titleLabel setFont:v5];
  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setLineBreakMode:0];
  [(PXSharedLibraryRulesTableViewCell *)self setNeedsUpdateConstraints];
}

- (void)_updateImageView
{
  v3 = [(PXSharedLibraryRulesTableViewCell *)self image];
  [(UIImageView *)self->_imageView setImage:v3];

  v4 = [MEMORY[0x1E69DCAD8] configurationWithScale:2];
  [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:v4];

  [(UIImageView *)self->_imageView setAccessibilityIgnoresInvertColors:1];
  v5 = [MEMORY[0x1E69DC888] systemBlueColor];
  [(UIImageView *)self->_imageView setTintColor:v5];

  [(UIImageView *)self->_imageView setContentMode:4];

  [(PXSharedLibraryRulesTableViewCell *)self setNeedsUpdateConstraints];
}

- (PXSharedLibraryRulesTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v55[9] = *MEMORY[0x1E69E9840];
  v54.receiver = self;
  v54.super_class = PXSharedLibraryRulesTableViewCell;
  v4 = [(PXSharedLibraryRulesTableViewCell *)&v54 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(PXSharedLibraryRulesTableViewCell *)v4 setLayoutMargins:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    v6 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(PXSharedLibraryRulesTableViewCell *)v5 setBackgroundColor:v6];

    v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v5->_imageView;
    v5->_imageView = v7;

    [(UIImageView *)v5->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [(PXSharedLibraryRulesTableViewCell *)v5 contentView];
    [v9 addSubview:v5->_imageView];

    v10 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setAxis:1];
    [v10 setAlignment:1];
    v11 = [(PXSharedLibraryRulesTableViewCell *)v5 contentView];
    [v11 addSubview:v10];

    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v12;

    [(UILabel *)v5->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 addArrangedSubview:v5->_titleLabel];
    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v5->_subtitleLabel;
    v5->_subtitleLabel = v14;

    [(UILabel *)v5->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_subtitleLabel setAdjustsFontSizeToFitWidth:1];
    [v10 addArrangedSubview:v5->_subtitleLabel];
    v16 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    detailLabel = v5->_detailLabel;
    v5->_detailLabel = v16;

    [(UILabel *)v5->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [(PXSharedLibraryRulesTableViewCell *)v5 contentView];
    [v18 addSubview:v5->_detailLabel];

    [(PXSharedLibraryRulesTableViewCell *)v5 setAccessoryType:0];
    v41 = MEMORY[0x1E696ACD8];
    v52 = [(UIImageView *)v5->_imageView leadingAnchor];
    v53 = [(PXSharedLibraryRulesTableViewCell *)v5 contentView];
    v51 = [v53 leadingAnchor];
    v50 = [v52 constraintEqualToAnchor:v51 constant:10.0];
    v55[0] = v50;
    v48 = [(UIImageView *)v5->_imageView centerYAnchor];
    v49 = [(PXSharedLibraryRulesTableViewCell *)v5 contentView];
    v47 = [v49 centerYAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v55[1] = v46;
    v44 = [v10 topAnchor];
    v45 = [(PXSharedLibraryRulesTableViewCell *)v5 contentView];
    v43 = [v45 topAnchor];
    v42 = [v44 constraintEqualToAnchor:v43 constant:10.0];
    v55[2] = v42;
    v39 = [v10 bottomAnchor];
    v40 = [(PXSharedLibraryRulesTableViewCell *)v5 contentView];
    v38 = [v40 bottomAnchor];
    v37 = [v39 constraintEqualToAnchor:v38 constant:-10.0];
    v55[3] = v37;
    v36 = [v10 leadingAnchor];
    v35 = [(UIImageView *)v5->_imageView trailingAnchor];
    v34 = [v36 constraintEqualToAnchor:v35 constant:10.0];
    v55[4] = v34;
    v33 = [v10 centerYAnchor];
    v32 = [(UIImageView *)v5->_imageView centerYAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v55[5] = v31;
    v30 = [v10 trailingAnchor];
    v29 = [(UILabel *)v5->_detailLabel leadingAnchor];
    v28 = [v30 constraintLessThanOrEqualToAnchor:v29 constant:-10.0];
    v55[6] = v28;
    v19 = [(UILabel *)v5->_detailLabel centerYAnchor];
    v20 = [(UIImageView *)v5->_imageView centerYAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v55[7] = v21;
    v22 = [(UILabel *)v5->_detailLabel trailingAnchor];
    v23 = [(PXSharedLibraryRulesTableViewCell *)v5 contentView];
    v24 = [v23 trailingAnchor];
    v25 = [v22 constraintEqualToAnchor:v24 constant:-10.0];
    v55[8] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:9];
    [v41 activateConstraints:v26];

    [(PXSharedLibraryRulesTableViewCell *)v5 _updateImageView];
    [(PXSharedLibraryRulesTableViewCell *)v5 _updateTitleLabel];
    [(PXSharedLibraryRulesTableViewCell *)v5 _updateSubtitleLabel];
    [(PXSharedLibraryRulesTableViewCell *)v5 _updateDetailLabel];
  }

  return v5;
}

@end