@interface PKEditPassesTableViewCell
+ (CGSize)imageSizeNeeded;
+ (UIEdgeInsets)separatorInset;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKEditPassesTableViewCell)initWithReuseIdentifier:(id)a3 showImage:(BOOL)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setImage:(id)a3 forPass:(id)a4;
@end

@implementation PKEditPassesTableViewCell

- (PKEditPassesTableViewCell)initWithReuseIdentifier:(id)a3 showImage:(BOOL)a4
{
  v15.receiver = self;
  v15.super_class = PKEditPassesTableViewCell;
  v5 = [(PKEditPassesTableViewCell *)&v15 initWithStyle:3 reuseIdentifier:a3];
  v6 = v5;
  if (v5)
  {
    v7 = [(PKEditPassesTableViewCell *)v5 textLabel];
    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v7 setFont:v8];

    v9 = [MEMORY[0x1E69DC888] labelColor];
    [v7 setTextColor:v9];

    v10 = [(PKEditPassesTableViewCell *)v6 detailTextLabel];
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [v10 setFont:v11];

    v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v10 setTextColor:v12];

    v6->_showImage = a4;
    v13 = [(PKEditPassesTableViewCell *)v6 imageView];
    [v13 setContentMode:1];
    [v13 setClipsToBounds:1];
    [v13 setHidden:!v6->_showImage];
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
  v3 = [(PKEditPassesTableViewCell *)self _shouldReverseLayoutDirection];
  if (!self->_showImage)
  {
    return;
  }

  v4 = v3;
  v5 = [(PKEditPassesTableViewCell *)self textLabel];
  v6 = [(PKEditPassesTableViewCell *)self detailTextLabel];
  v7 = [(PKEditPassesTableViewCell *)self imageView];
  v8 = [(PKEditPassesTableViewCell *)self contentView];
  [v8 layoutMargins];
  v10 = v9;
  v12 = v11;
  [v8 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  rect = v19;
  v20 = v10 + v12;
  v21 = [v7 image];
  v22 = v21;
  if (v21)
  {
    [v21 pkui_alignmentSize];
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
  [v7 frameForAlignmentRect:{v36, v35, v32, v33}];
  [v7 setFrame:?];
  [v5 frame];
  v38 = v37;
  v40 = v39;
  [v6 frame];
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
  [v5 setFrame:{v27, v38, MaxX - v27, v40}];
  [v6 setFrame:{v27, v42, v51, v45}];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = PKEditPassesTableViewCell;
  [(PKEditPassesTableViewCell *)&v6 prepareForReuse];
  v3 = [(PKEditPassesTableViewCell *)self textLabel];
  [v3 setText:0];

  v4 = [(PKEditPassesTableViewCell *)self detailTextLabel];
  [v4 setText:0];

  [(PKEditPassesTableViewCell *)self setPass:0];
  v5 = [(PKEditPassesTableViewCell *)self imageView];
  [v5 setImage:0];
  [v5 setHidden:!self->_showImage];
}

- (void)setImage:(id)a3 forPass:(id)a4
{
  v6 = a3;
  if (self->_showImage)
  {
    v11 = v6;
    v7 = a4;
    v8 = [(PKEditPassesTableViewCell *)self imageView];
    v9 = [(PKPass *)self->_pass uniqueID];
    v10 = [v7 uniqueID];

    LODWORD(v7) = [v9 isEqualToString:v10];
    if (v7)
    {
      [v8 setImage:v11];
      [v8 setAccessibilityIgnoresInvertColors:1];
      [(PKEditPassesTableViewCell *)self setNeedsLayout];
    }

    v6 = v11;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v6.receiver = self;
  v6.super_class = PKEditPassesTableViewCell;
  [(PKEditPassesTableViewCell *)&v6 sizeThatFits:a3.width, a3.height];
  v5 = fmax(v4, 64.0);
  result.height = v5;
  result.width = v3;
  return result;
}

+ (CGSize)imageSizeNeeded
{
  +[PKEditPassesTableViewCell height];
  v4 = v3;
  v5 = [a1 needsFullPassImage];
  v6 = v4 + -8.0;
  v7 = 80.0;
  if (v5)
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