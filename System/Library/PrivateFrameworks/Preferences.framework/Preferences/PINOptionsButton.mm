@interface PINOptionsButton
- (PINOptionsButton)init;
- (void)layoutSubviews;
@end

@implementation PINOptionsButton

- (PINOptionsButton)init
{
  v7.receiver = self;
  v7.super_class = PINOptionsButton;
  v3 = [-[PINOptionsButton class](&v7 class)];

  if (v3)
  {
    titleLabel = [(PINOptionsButton *)v3 titleLabel];
    v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [titleLabel setFont:v5];

    [titleLabel setNumberOfLines:0];
    [titleLabel setTextAlignment:1];
    [titleLabel setAdjustsFontSizeToFitWidth:1];
  }

  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PINOptionsButton;
  [(PINOptionsButton *)&v4 layoutSubviews];
  titleLabel = [(PINOptionsButton *)self titleLabel];
  [titleLabel setAdjustsFontSizeToFitWidth:1];
  [(PINOptionsButton *)self bounds];
  [titleLabel setFrame:?];
}

@end