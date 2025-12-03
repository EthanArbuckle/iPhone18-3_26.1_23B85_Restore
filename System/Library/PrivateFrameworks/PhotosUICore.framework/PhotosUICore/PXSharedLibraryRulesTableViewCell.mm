@interface PXSharedLibraryRulesTableViewCell
- (PXSharedLibraryRulesTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateDetailLabel;
- (void)_updateImageView;
- (void)_updateSubtitleLabel;
- (void)_updateTitleLabel;
- (void)setDetail:(id)detail;
- (void)setImage:(id)image;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation PXSharedLibraryRulesTableViewCell

- (void)setImage:(id)image
{
  objc_storeStrong(&self->_image, image);

  [(PXSharedLibraryRulesTableViewCell *)self _updateImageView];
}

- (void)setDetail:(id)detail
{
  detailCopy = detail;
  detail = [(PXSharedLibraryRulesTableViewCell *)self detail];
  v6 = detail;
  if (detail == detailCopy)
  {
  }

  else
  {
    v7 = [detail isEqualToString:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_detail, detail);
      [(PXSharedLibraryRulesTableViewCell *)self _updateDetailLabel];
      [(PXSharedLibraryRulesTableViewCell *)self _updateSubtitleLabel];
    }
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  subtitle = [(PXSharedLibraryRulesTableViewCell *)self subtitle];
  v6 = subtitle;
  if (subtitle == subtitleCopy)
  {
  }

  else
  {
    v7 = [subtitle isEqualToString:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_subtitle, subtitle);
      [(PXSharedLibraryRulesTableViewCell *)self _updateSubtitleLabel];
    }
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(PXSharedLibraryRulesTableViewCell *)self title];
  v6 = title;
  if (title == titleCopy)
  {
  }

  else
  {
    v7 = [title isEqualToString:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_title, title);
      [(PXSharedLibraryRulesTableViewCell *)self _updateTitleLabel];
    }
  }
}

- (void)_updateDetailLabel
{
  detail = [(PXSharedLibraryRulesTableViewCell *)self detail];
  [(UILabel *)self->_detailLabel setText:detail];

  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [(UILabel *)self->_detailLabel setTextColor:systemBlueColor];

  v5 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)self->_detailLabel setFont:v5];
}

- (void)_updateSubtitleLabel
{
  subtitle = [(PXSharedLibraryRulesTableViewCell *)self subtitle];
  [(UILabel *)self->_subtitleLabel setText:subtitle];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_subtitleLabel setTextColor:secondaryLabelColor];

  detail = [(PXSharedLibraryRulesTableViewCell *)self detail];
  [(UILabel *)self->_subtitleLabel setHidden:detail != 0];

  v6 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDD08] withSymbolicTraits:0x8000 options:2];
  [(UILabel *)self->_subtitleLabel setFont:v6];
  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  [(UILabel *)self->_subtitleLabel setLineBreakMode:0];
  [(PXSharedLibraryRulesTableViewCell *)self setNeedsUpdateConstraints];
}

- (void)_updateTitleLabel
{
  title = [(PXSharedLibraryRulesTableViewCell *)self title];
  [(UILabel *)self->_titleLabel setText:title];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_titleLabel setTextColor:labelColor];

  v5 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] withSymbolicTraits:0x8000 options:2];
  [(UILabel *)self->_titleLabel setFont:v5];
  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setLineBreakMode:0];
  [(PXSharedLibraryRulesTableViewCell *)self setNeedsUpdateConstraints];
}

- (void)_updateImageView
{
  image = [(PXSharedLibraryRulesTableViewCell *)self image];
  [(UIImageView *)self->_imageView setImage:image];

  v4 = [MEMORY[0x1E69DCAD8] configurationWithScale:2];
  [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:v4];

  [(UIImageView *)self->_imageView setAccessibilityIgnoresInvertColors:1];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [(UIImageView *)self->_imageView setTintColor:systemBlueColor];

  [(UIImageView *)self->_imageView setContentMode:4];

  [(PXSharedLibraryRulesTableViewCell *)self setNeedsUpdateConstraints];
}

- (PXSharedLibraryRulesTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v55[9] = *MEMORY[0x1E69E9840];
  v54.receiver = self;
  v54.super_class = PXSharedLibraryRulesTableViewCell;
  v4 = [(PXSharedLibraryRulesTableViewCell *)&v54 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(PXSharedLibraryRulesTableViewCell *)v4 setLayoutMargins:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(PXSharedLibraryRulesTableViewCell *)v5 setBackgroundColor:secondarySystemBackgroundColor];

    v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v5->_imageView;
    v5->_imageView = v7;

    [(UIImageView *)v5->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(PXSharedLibraryRulesTableViewCell *)v5 contentView];
    [contentView addSubview:v5->_imageView];

    v10 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setAxis:1];
    [v10 setAlignment:1];
    contentView2 = [(PXSharedLibraryRulesTableViewCell *)v5 contentView];
    [contentView2 addSubview:v10];

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
    contentView3 = [(PXSharedLibraryRulesTableViewCell *)v5 contentView];
    [contentView3 addSubview:v5->_detailLabel];

    [(PXSharedLibraryRulesTableViewCell *)v5 setAccessoryType:0];
    v41 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UIImageView *)v5->_imageView leadingAnchor];
    contentView4 = [(PXSharedLibraryRulesTableViewCell *)v5 contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v50 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
    v55[0] = v50;
    centerYAnchor = [(UIImageView *)v5->_imageView centerYAnchor];
    contentView5 = [(PXSharedLibraryRulesTableViewCell *)v5 contentView];
    centerYAnchor2 = [contentView5 centerYAnchor];
    v46 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v55[1] = v46;
    topAnchor = [v10 topAnchor];
    contentView6 = [(PXSharedLibraryRulesTableViewCell *)v5 contentView];
    topAnchor2 = [contentView6 topAnchor];
    v42 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    v55[2] = v42;
    bottomAnchor = [v10 bottomAnchor];
    contentView7 = [(PXSharedLibraryRulesTableViewCell *)v5 contentView];
    bottomAnchor2 = [contentView7 bottomAnchor];
    v37 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
    v55[3] = v37;
    leadingAnchor3 = [v10 leadingAnchor];
    trailingAnchor = [(UIImageView *)v5->_imageView trailingAnchor];
    v34 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
    v55[4] = v34;
    centerYAnchor3 = [v10 centerYAnchor];
    centerYAnchor4 = [(UIImageView *)v5->_imageView centerYAnchor];
    v31 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v55[5] = v31;
    trailingAnchor2 = [v10 trailingAnchor];
    leadingAnchor4 = [(UILabel *)v5->_detailLabel leadingAnchor];
    v28 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:leadingAnchor4 constant:-10.0];
    v55[6] = v28;
    centerYAnchor5 = [(UILabel *)v5->_detailLabel centerYAnchor];
    centerYAnchor6 = [(UIImageView *)v5->_imageView centerYAnchor];
    v21 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v55[7] = v21;
    trailingAnchor3 = [(UILabel *)v5->_detailLabel trailingAnchor];
    contentView8 = [(PXSharedLibraryRulesTableViewCell *)v5 contentView];
    trailingAnchor4 = [contentView8 trailingAnchor];
    v25 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-10.0];
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