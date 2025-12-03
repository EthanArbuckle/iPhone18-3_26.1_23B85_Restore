@interface PKImageViewCell
- (PKImageViewCell)initWithReuseIdentifier:(id)identifier;
- (UIEdgeInsets)imageViewMargins;
- (UIImage)image;
- (double)imageViewCornerRadius;
- (void)layoutSubviews;
- (void)setImage:(id)image;
- (void)setImageViewCornerRadius:(double)radius;
- (void)setImageViewMargins:(UIEdgeInsets)margins;
@end

@implementation PKImageViewCell

- (PKImageViewCell)initWithReuseIdentifier:(id)identifier
{
  v14.receiver = self;
  v14.super_class = PKImageViewCell;
  v3 = [(PKImageViewCell *)&v14 initWithStyle:0 reuseIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    [(PKImageViewCell *)v3 setAccessoryType:0];
    v5 = *MEMORY[0x1E69DDCE0];
    v6 = *(MEMORY[0x1E69DDCE0] + 8);
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
    v8 = *(MEMORY[0x1E69DDCE0] + 24);
    [(PKImageViewCell *)v4 setSeparatorInset:*MEMORY[0x1E69DDCE0], v6, v7, v8];
    textLabel = [(PKImageViewCell *)v4 textLabel];
    [textLabel setHidden:1];

    detailTextLabel = [(PKImageViewCell *)v4 detailTextLabel];
    [detailTextLabel setHidden:1];

    v13.receiver = v4;
    v13.super_class = PKImageViewCell;
    imageView = [(PKImageViewCell *)&v13 imageView];
    [imageView setContentMode:1];
    [imageView setLayoutMargins:{v5, v6, v7, v8}];
    [imageView setAccessibilityIdentifier:*MEMORY[0x1E69B9878]];
  }

  return v4;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = PKImageViewCell;
  [(PKImageViewCell *)&v7 layoutSubviews];
  v6.receiver = self;
  v6.super_class = PKImageViewCell;
  imageView = [(PKImageViewCell *)&v6 imageView];
  contentView = [(PKImageViewCell *)self contentView];
  [contentView bounds];
  [imageView layoutMargins];

  image = [imageView image];
  [image size];
  PKSizeAspectFit();

  PKSizeAlignedInRect();
  [imageView setFrame:?];
}

- (void)setImage:(id)image
{
  v5.receiver = self;
  v5.super_class = PKImageViewCell;
  imageCopy = image;
  imageView = [(PKImageViewCell *)&v5 imageView];
  [imageView setImage:{imageCopy, v5.receiver, v5.super_class}];
}

- (UIImage)image
{
  v5.receiver = self;
  v5.super_class = PKImageViewCell;
  imageView = [(PKImageViewCell *)&v5 imageView];
  image = [imageView image];

  return image;
}

- (UIEdgeInsets)imageViewMargins
{
  v15.receiver = self;
  v15.super_class = PKImageViewCell;
  imageView = [(PKImageViewCell *)&v15 imageView];
  [imageView layoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)setImageViewMargins:(UIEdgeInsets)margins
{
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
  v8.receiver = self;
  v8.super_class = PKImageViewCell;
  imageView = [(PKImageViewCell *)&v8 imageView];
  [imageView setLayoutMargins:{top, left, bottom, right}];
}

- (double)imageViewCornerRadius
{
  v7.receiver = self;
  v7.super_class = PKImageViewCell;
  imageView = [(PKImageViewCell *)&v7 imageView];
  layer = [imageView layer];
  [layer cornerRadius];
  v5 = v4;

  return v5;
}

- (void)setImageViewCornerRadius:(double)radius
{
  v6.receiver = self;
  v6.super_class = PKImageViewCell;
  imageView = [(PKImageViewCell *)&v6 imageView];
  layer = [imageView layer];

  [layer setCornerRadius:radius];
  [layer setMasksToBounds:radius > 0.0];
}

@end