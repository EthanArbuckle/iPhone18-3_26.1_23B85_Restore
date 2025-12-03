@interface IdentityPortraitCell
- (IdentityPortraitCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation IdentityPortraitCell

- (IdentityPortraitCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = IdentityPortraitCell;
  v4 = [(IdentityPortraitCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(IdentityPortraitCell *)v4 setBackgroundColor:clearColor];

    imageView = [(IdentityPortraitCell *)v4 imageView];
    [imageView setContentMode:2];
    layer = [imageView layer];
    [layer setMasksToBounds:1];
    [layer setCornerRadius:10.0];
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [layer setBorderColor:{objc_msgSend(systemBackgroundColor, "CGColor")}];

    [layer setBorderWidth:PKUIPixelLength() * 3.0];
    [imageView pkui_setExcludedFromScreenCapture:1 andBroadcasting:1];
  }

  return v4;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = IdentityPortraitCell;
  [(IdentityPortraitCell *)&v18 layoutSubviews];
  contentView = [(IdentityPortraitCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;

  imageView = [(IdentityPortraitCell *)self imageView];
  [imageView sizeThatFits:{v5, v7}];

  PKSizeAspectFit();
  PKSizeAlignedInRect();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  imageView2 = [(IdentityPortraitCell *)self imageView];
  [imageView2 setFrame:{v10, v12, v14, v16}];
}

@end