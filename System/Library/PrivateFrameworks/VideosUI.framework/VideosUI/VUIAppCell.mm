@interface VUIAppCell
+ (UIEdgeInsets)contentInsets;
- (void)layoutSubviews;
- (void)setIconSize:(CGSize)size;
- (void)setImage:(id)image;
- (void)setTitle:(id)title;
- (void)updateConstraints;
@end

@implementation VUIAppCell

+ (UIEdgeInsets)contentInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setIconSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (!self->_didLayout)
  {
    [(VUIAppCell *)self layoutSubviews];
  }

  self->_iconSize.width = width;
  self->_iconSize.height = height;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (!self->_didLayout)
  {
    [(VUIAppCell *)self layoutSubviews];
  }

  image = self->_image;
  self->_image = imageCopy;
  v6 = imageCopy;

  [(UIImageView *)self->_imageView setImage:self->_image];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (!self->_didLayout)
  {
    [(VUIAppCell *)self layoutSubviews];
  }

  if (!-[NSString length](self->_title, "length") && [titleCopy length])
  {
    [(VUIAppCell *)self setNeedsUpdateConstraints];
  }

  title = self->_title;
  self->_title = titleCopy;
  v6 = titleCopy;

  [(UILabel *)self->_titleLabel setText:self->_title];
}

- (void)layoutSubviews
{
  if (!self->_didLayout)
  {
    v3 = objc_alloc(MEMORY[0x1E69DCC10]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v5 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v16 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD08] maximumContentSizeCategory:*MEMORY[0x1E69DDC40]];
    vui_primaryTextColor = [MEMORY[0x1E69DC888] vui_primaryTextColor];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 2)
    {
      v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];

      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [(UILabel *)v4 setTextColor:whiteColor];

      whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];

      vui_primaryTextColor = whiteColor2;
      v16 = v9;
    }

    [(UILabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4 setFont:v16];
    [(UILabel *)v4 setText:self->_title];
    [(UILabel *)v4 setNumberOfLines:2];
    [(UILabel *)v4 setTextAlignment:1];
    [(UILabel *)v4 setMinimumScaleFactor:0.7];
    [(UILabel *)v4 setTextColor:vui_primaryTextColor];
    [(UIImageView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(VUIAppCell *)self contentView];
    [contentView addSubview:v5];
    [contentView addSubview:v4];
    imageView = self->_imageView;
    self->_imageView = v5;
    v14 = v5;

    titleLabel = self->_titleLabel;
    self->_titleLabel = v4;

    self->_didLayout = 1;
  }
}

- (void)updateConstraints
{
  v56.receiver = self;
  v56.super_class = VUIAppCell;
  [(VUIAppCell *)&v56 updateConstraints];
  +[VUIAppCell contentInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  contentView = [(VUIAppCell *)self contentView];
  if ([(NSString *)self->_title length])
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v14 = 20.0;
    if (userInterfaceIdiom <= 6)
    {
      v14 = dbl_1E4296A98[userInterfaceIdiom];
    }

    topAnchor = [(UIImageView *)self->_imageView topAnchor];
    topAnchor2 = [contentView topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v4];
    [v17 setActive:1];

    centerXAnchor = [(UIImageView *)self->_imageView centerXAnchor];
    centerXAnchor2 = [contentView centerXAnchor];
    v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v20 setActive:1];

    leadingAnchor = [(UIImageView *)self->_imageView leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v23 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:v6];
    [v23 setActive:1];

    trailingAnchor = [(UIImageView *)self->_imageView trailingAnchor];
    trailingAnchor2 = [contentView trailingAnchor];
    v26 = -v10;
    v27 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:v26];
    [v27 setActive:1];

    heightAnchor = [(UIImageView *)self->_imageView heightAnchor];
    v29 = [heightAnchor constraintEqualToConstant:self->_iconSize.height];
    [v29 setActive:1];

    widthAnchor = [(UIImageView *)self->_imageView widthAnchor];
    v31 = [widthAnchor constraintEqualToConstant:self->_iconSize.width];
    [v31 setActive:1];

    firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    bottomAnchor = [(UIImageView *)self->_imageView bottomAnchor];
    v34 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:v14];
    [v34 setActive:1];

    lastBaselineAnchor = [(UILabel *)self->_titleLabel lastBaselineAnchor];
    bottomAnchor2 = [contentView bottomAnchor];
    v37 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v8];
    [v37 setActive:1];

    leadingAnchor3 = [(UILabel *)self->_titleLabel leadingAnchor];
    leadingAnchor4 = [contentView leadingAnchor];
    v40 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v6];
    [v40 setActive:1];

    trailingAnchor3 = [(UILabel *)self->_titleLabel trailingAnchor];
    trailingAnchor4 = [contentView trailingAnchor];
    v43 = trailingAnchor3;
    v44 = trailingAnchor4;
    v45 = v26;
  }

  else
  {
    leadingAnchor5 = [(UIImageView *)self->_imageView leadingAnchor];
    leadingAnchor6 = [contentView leadingAnchor];
    v48 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:v6];
    [v48 setActive:1];

    trailingAnchor5 = [(UIImageView *)self->_imageView trailingAnchor];
    trailingAnchor6 = [contentView trailingAnchor];
    v51 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-v10];
    [v51 setActive:1];

    topAnchor3 = [(UIImageView *)self->_imageView topAnchor];
    topAnchor4 = [contentView topAnchor];
    v54 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:v4];
    [v54 setActive:1];

    trailingAnchor3 = [(UIImageView *)self->_imageView bottomAnchor];
    trailingAnchor4 = [contentView bottomAnchor];
    v45 = -v8;
    v43 = trailingAnchor3;
    v44 = trailingAnchor4;
  }

  v55 = [v43 constraintEqualToAnchor:v44 constant:v45];
  [v55 setActive:1];
}

@end