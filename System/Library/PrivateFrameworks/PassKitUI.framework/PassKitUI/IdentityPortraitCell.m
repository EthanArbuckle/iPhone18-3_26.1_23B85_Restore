@interface IdentityPortraitCell
- (IdentityPortraitCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation IdentityPortraitCell

- (IdentityPortraitCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = IdentityPortraitCell;
  v4 = [(IdentityPortraitCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DC888] clearColor];
    [(IdentityPortraitCell *)v4 setBackgroundColor:v5];

    v6 = [(IdentityPortraitCell *)v4 imageView];
    [v6 setContentMode:2];
    v7 = [v6 layer];
    [v7 setMasksToBounds:1];
    [v7 setCornerRadius:10.0];
    v8 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v7 setBorderColor:{objc_msgSend(v8, "CGColor")}];

    [v7 setBorderWidth:PKUIPixelLength() * 3.0];
    [v6 pkui_setExcludedFromScreenCapture:1 andBroadcasting:1];
  }

  return v4;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = IdentityPortraitCell;
  [(IdentityPortraitCell *)&v18 layoutSubviews];
  v3 = [(IdentityPortraitCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = [(IdentityPortraitCell *)self imageView];
  [v8 sizeThatFits:{v5, v7}];

  PKSizeAspectFit();
  PKSizeAlignedInRect();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(IdentityPortraitCell *)self imageView];
  [v17 setFrame:{v10, v12, v14, v16}];
}

@end