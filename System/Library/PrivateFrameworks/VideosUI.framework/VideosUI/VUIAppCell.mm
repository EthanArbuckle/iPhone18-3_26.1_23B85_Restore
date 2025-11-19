@interface VUIAppCell
+ (UIEdgeInsets)contentInsets;
- (void)layoutSubviews;
- (void)setIconSize:(CGSize)a3;
- (void)setImage:(id)a3;
- (void)setTitle:(id)a3;
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

- (void)setIconSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (!self->_didLayout)
  {
    [(VUIAppCell *)self layoutSubviews];
  }

  self->_iconSize.width = width;
  self->_iconSize.height = height;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  if (!self->_didLayout)
  {
    [(VUIAppCell *)self layoutSubviews];
  }

  image = self->_image;
  self->_image = v4;
  v6 = v4;

  [(UIImageView *)self->_imageView setImage:self->_image];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  if (!self->_didLayout)
  {
    [(VUIAppCell *)self layoutSubviews];
  }

  if (!-[NSString length](self->_title, "length") && [v4 length])
  {
    [(VUIAppCell *)self setNeedsUpdateConstraints];
  }

  title = self->_title;
  self->_title = v4;
  v6 = v4;

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
    v6 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
    v7 = [MEMORY[0x1E69DC938] currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if (v8 == 2)
    {
      v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];

      v10 = [MEMORY[0x1E69DC888] whiteColor];
      [(UILabel *)v4 setTextColor:v10];

      v11 = [MEMORY[0x1E69DC888] whiteColor];

      v6 = v11;
      v16 = v9;
    }

    [(UILabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4 setFont:v16];
    [(UILabel *)v4 setText:self->_title];
    [(UILabel *)v4 setNumberOfLines:2];
    [(UILabel *)v4 setTextAlignment:1];
    [(UILabel *)v4 setMinimumScaleFactor:0.7];
    [(UILabel *)v4 setTextColor:v6];
    [(UIImageView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [(VUIAppCell *)self contentView];
    [v12 addSubview:v5];
    [v12 addSubview:v4];
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
  v11 = [(VUIAppCell *)self contentView];
  if ([(NSString *)self->_title length])
  {
    v12 = [MEMORY[0x1E69DC938] currentDevice];
    v13 = [v12 userInterfaceIdiom];

    v14 = 20.0;
    if (v13 <= 6)
    {
      v14 = dbl_1E4296A98[v13];
    }

    v15 = [(UIImageView *)self->_imageView topAnchor];
    v16 = [v11 topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:v4];
    [v17 setActive:1];

    v18 = [(UIImageView *)self->_imageView centerXAnchor];
    v19 = [v11 centerXAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    [v20 setActive:1];

    v21 = [(UIImageView *)self->_imageView leadingAnchor];
    v22 = [v11 leadingAnchor];
    v23 = [v21 constraintGreaterThanOrEqualToAnchor:v22 constant:v6];
    [v23 setActive:1];

    v24 = [(UIImageView *)self->_imageView trailingAnchor];
    v25 = [v11 trailingAnchor];
    v26 = -v10;
    v27 = [v24 constraintLessThanOrEqualToAnchor:v25 constant:v26];
    [v27 setActive:1];

    v28 = [(UIImageView *)self->_imageView heightAnchor];
    v29 = [v28 constraintEqualToConstant:self->_iconSize.height];
    [v29 setActive:1];

    v30 = [(UIImageView *)self->_imageView widthAnchor];
    v31 = [v30 constraintEqualToConstant:self->_iconSize.width];
    [v31 setActive:1];

    v32 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    v33 = [(UIImageView *)self->_imageView bottomAnchor];
    v34 = [v32 constraintEqualToAnchor:v33 constant:v14];
    [v34 setActive:1];

    v35 = [(UILabel *)self->_titleLabel lastBaselineAnchor];
    v36 = [v11 bottomAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:-v8];
    [v37 setActive:1];

    v38 = [(UILabel *)self->_titleLabel leadingAnchor];
    v39 = [v11 leadingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:v6];
    [v40 setActive:1];

    v41 = [(UILabel *)self->_titleLabel trailingAnchor];
    v42 = [v11 trailingAnchor];
    v43 = v41;
    v44 = v42;
    v45 = v26;
  }

  else
  {
    v46 = [(UIImageView *)self->_imageView leadingAnchor];
    v47 = [v11 leadingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47 constant:v6];
    [v48 setActive:1];

    v49 = [(UIImageView *)self->_imageView trailingAnchor];
    v50 = [v11 trailingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50 constant:-v10];
    [v51 setActive:1];

    v52 = [(UIImageView *)self->_imageView topAnchor];
    v53 = [v11 topAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:v4];
    [v54 setActive:1];

    v41 = [(UIImageView *)self->_imageView bottomAnchor];
    v42 = [v11 bottomAnchor];
    v45 = -v8;
    v43 = v41;
    v44 = v42;
  }

  v55 = [v43 constraintEqualToAnchor:v44 constant:v45];
  [v55 setActive:1];
}

@end