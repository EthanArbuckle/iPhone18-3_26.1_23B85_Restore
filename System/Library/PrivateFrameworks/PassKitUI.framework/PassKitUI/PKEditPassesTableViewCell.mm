@interface PKEditPassesTableViewCell
+ (CGSize)imageSizeNeeded;
+ (UIEdgeInsets)separatorInset;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKEditPassesTableViewCell)initWithReuseIdentifier:(id)identifier showImage:(BOOL)image;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setImage:(id)image forPass:(id)pass;
@end

@implementation PKEditPassesTableViewCell

- (PKEditPassesTableViewCell)initWithReuseIdentifier:(id)identifier showImage:(BOOL)image
{
  v15.receiver = self;
  v15.super_class = PKEditPassesTableViewCell;
  v5 = [(PKEditPassesTableViewCell *)&v15 initWithStyle:3 reuseIdentifier:identifier];
  v6 = v5;
  if (v5)
  {
    textLabel = [(PKEditPassesTableViewCell *)v5 textLabel];
    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [textLabel setFont:v8];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [textLabel setTextColor:labelColor];

    detailTextLabel = [(PKEditPassesTableViewCell *)v6 detailTextLabel];
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [detailTextLabel setFont:v11];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [detailTextLabel setTextColor:secondaryLabelColor];

    v6->_showImage = image;
    imageView = [(PKEditPassesTableViewCell *)v6 imageView];
    [imageView setContentMode:1];
    [imageView setClipsToBounds:1];
    [imageView setHidden:!v6->_showImage];
    [objc_opt_class() separatorInset];
    [(PKEditPassesTableViewCell *)v6 setSeparatorInset:?];
  }

  return v6;
}

- (void)layoutSubviews
{
  v55.receiver = self;
  v55.super_class = PKEditPassesTableViewCell;
  [(PKEditPassesTableViewCell *)&v55 layoutSubviews];
  _shouldReverseLayoutDirection = [(PKEditPassesTableViewCell *)self _shouldReverseLayoutDirection];
  if (!self->_showImage)
  {
    return;
  }

  v4 = _shouldReverseLayoutDirection;
  textLabel = [(PKEditPassesTableViewCell *)self textLabel];
  detailTextLabel = [(PKEditPassesTableViewCell *)self detailTextLabel];
  imageView = [(PKEditPassesTableViewCell *)self imageView];
  contentView = [(PKEditPassesTableViewCell *)self contentView];
  [contentView layoutMargins];
  v10 = v9;
  v12 = v11;
  [contentView bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  rect = v19;
  v20 = v10 + v12;
  image = [imageView image];
  v22 = image;
  if (image)
  {
    [image pkui_alignmentSize];
  }

  else
  {
    +[PKEditPassesTableViewCell imageSizeNeeded];
  }

  v25 = v23;
  v26 = v24;
  v27 = v10 + v14;
  v28 = v16 + 0.0;
  v29 = v18 - v20;
  if (!+[PKEditPassesTableViewCell needsFullPassImage]&& [(PKPass *)self->_pass style]!= 6)
  {
    v56.origin.x = v10 + v14;
    v56.origin.y = v28;
    v56.size.width = v29;
    v56.size.height = rect;
    v35 = CGRectGetMaxY(v56) - v26;
    v32 = v25;
    goto LABEL_11;
  }

  v32 = v25;
  if (!v22)
  {
    v35 = v28 + 8.0;
LABEL_11:
    v33 = v26;
    goto LABEL_12;
  }

  v33 = v26;
  v31.n128_u64[0] = 0.5;
  v30.n128_f64[0] = (rect - v26) * 0.5;
  PKFloatCeilToPixel(v30, v31);
  v35 = v28 + v34;
LABEL_12:
  v36 = v27;
  if (v4)
  {
    v57.origin.x = v27;
    v57.origin.y = v28;
    v57.size.width = v29;
    v57.size.height = rect;
    v36 = CGRectGetMaxX(v57) - v32;
  }

  v52 = v28;
  v53 = v29;
  [imageView frameForAlignmentRect:{v36, v35, v32, v33}];
  [imageView setFrame:?];
  [textLabel frame];
  v38 = v37;
  v40 = v39;
  [detailTextLabel frame];
  v42 = v41;
  v43 = v32;
  v45 = v44;
  if (v4)
  {
    MaxX = v36 + -12.0;
  }

  else
  {
    v47 = v36;
    v48 = v35;
    v49 = v33;
    v50 = CGRectGetMaxX(*(&v43 - 2)) + 12.0;
    v58.origin.x = v27;
    v58.origin.y = v52;
    v58.size.width = v53;
    v58.size.height = rect;
    MaxX = CGRectGetMaxX(v58);
    v27 = v50;
  }

  v51 = MaxX - v27;
  [textLabel setFrame:{v27, v38, MaxX - v27, v40}];
  [detailTextLabel setFrame:{v27, v42, v51, v45}];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = PKEditPassesTableViewCell;
  [(PKEditPassesTableViewCell *)&v6 prepareForReuse];
  textLabel = [(PKEditPassesTableViewCell *)self textLabel];
  [textLabel setText:0];

  detailTextLabel = [(PKEditPassesTableViewCell *)self detailTextLabel];
  [detailTextLabel setText:0];

  [(PKEditPassesTableViewCell *)self setPass:0];
  imageView = [(PKEditPassesTableViewCell *)self imageView];
  [imageView setImage:0];
  [imageView setHidden:!self->_showImage];
}

- (void)setImage:(id)image forPass:(id)pass
{
  imageCopy = image;
  if (self->_showImage)
  {
    v11 = imageCopy;
    passCopy = pass;
    imageView = [(PKEditPassesTableViewCell *)self imageView];
    uniqueID = [(PKPass *)self->_pass uniqueID];
    uniqueID2 = [passCopy uniqueID];

    LODWORD(passCopy) = [uniqueID isEqualToString:uniqueID2];
    if (passCopy)
    {
      [imageView setImage:v11];
      [imageView setAccessibilityIgnoresInvertColors:1];
      [(PKEditPassesTableViewCell *)self setNeedsLayout];
    }

    imageCopy = v11;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v6.receiver = self;
  v6.super_class = PKEditPassesTableViewCell;
  [(PKEditPassesTableViewCell *)&v6 sizeThatFits:fits.width, fits.height];
  v5 = fmax(v4, 64.0);
  result.height = v5;
  result.width = v3;
  return result;
}

+ (CGSize)imageSizeNeeded
{
  +[PKEditPassesTableViewCell height];
  v4 = v3;
  needsFullPassImage = [self needsFullPassImage];
  v6 = v4 + -8.0;
  v7 = 80.0;
  if (needsFullPassImage)
  {
    v7 = 36.0;
  }

  result.height = v6;
  result.width = v7;
  return result;
}

+ (UIEdgeInsets)separatorInset
{
  v2 = PKUIGetMinScreenWidthType();
  v3 = 44.0;
  if (v2)
  {
    v3 = 45.0;
  }

  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v3;
  result.top = v4;
  return result;
}

@end