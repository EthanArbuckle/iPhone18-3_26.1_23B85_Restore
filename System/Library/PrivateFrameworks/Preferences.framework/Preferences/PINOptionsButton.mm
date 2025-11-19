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
    v4 = [(PINOptionsButton *)v3 titleLabel];
    v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v4 setFont:v5];

    [v4 setNumberOfLines:0];
    [v4 setTextAlignment:1];
    [v4 setAdjustsFontSizeToFitWidth:1];
  }

  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PINOptionsButton;
  [(PINOptionsButton *)&v4 layoutSubviews];
  v3 = [(PINOptionsButton *)self titleLabel];
  [v3 setAdjustsFontSizeToFitWidth:1];
  [(PINOptionsButton *)self bounds];
  [v3 setFrame:?];
}

@end