@interface FailureBarView
- (CGSize)sizeThatFits:(CGSize)fits;
- (FailureBarView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setFailureCount:(int64_t)count;
@end

@implementation FailureBarView

- (FailureBarView)initWithFrame:(CGRect)frame
{
  y = frame.origin.y;
  x = frame.origin.x;
  v25.receiver = self;
  v25.super_class = FailureBarView;
  v5 = [(FailureBarView *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    v6 = MEMORY[0x1E69DCAB8];
    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
    v8 = [v6 circleImageWithDiameter:systemRedColor color:27.0];

    if (!v8)
    {
      v9 = MEMORY[0x1E69DCAB8];
      v10 = PSPreferencesFrameworkBundle();
      v8 = [v9 imageNamed:@"PasscodeFailure" inBundle:v10];
    }

    v11 = [v8 stretchableImageWithLeftCapWidth:13 topCapHeight:13];
    [(FailureBarView *)v5 setImage:v11];
    [v11 size];
    v13 = v12;
    v15 = v14;
    [(FailureBarView *)v5 setFrame:x, y, v12, v14];
    v16 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{x, y, v13, v15}];
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v16;

    v18 = v5->_titleLabel;
    v19 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v18 setFont:v19];

    v20 = v5->_titleLabel;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v20 setTextColor:whiteColor];

    v22 = v5->_titleLabel;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v22 setBackgroundColor:clearColor];

    [(UILabel *)v5->_titleLabel setTextAlignment:1];
    [(UILabel *)v5->_titleLabel setNumberOfLines:0];
    [(UILabel *)v5->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(FailureBarView *)v5 addSubview:v5->_titleLabel];
  }

  return v5;
}

- (void)setFailureCount:(int64_t)count
{
  v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = @"FAILURES";
  if (count == 1)
  {
    v5 = @"FAILURE";
  }

  v6 = v5;
  v7 = [v15 localizedStringForKey:v6 value:&stru_1EFE45030 table:@"PIN Entry"];
  if (v7 == v6)
  {
    v8 = PS_LocalizedStringForPINEntry(v6);

    v7 = v8;
  }

  titleLabel = self->_titleLabel;
  v10 = MEMORY[0x1E696AEC0];
  v11 = MEMORY[0x1E696ADA0];
  v12 = [MEMORY[0x1E696AD98] numberWithLong:count];
  v13 = [v11 localizedStringFromNumber:v12 numberStyle:1];
  v14 = [v10 stringWithFormat:v7, v13];
  [(UILabel *)titleLabel setText:v14];

  [(FailureBarView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = FailureBarView;
  [(FailureBarView *)&v12 layoutSubviews];
  image = [(FailureBarView *)self image];
  v4 = [image leftCapWidth] + 5.0;

  [(FailureBarView *)self bounds];
  v6 = v5 + v4 * -2.0;
  v8 = v7 + -2.0;
  v9 = (v5 - v6) * 0.5;
  v10 = (v7 - (v7 + -2.0)) * 0.5;
  titleLabel = [(FailureBarView *)self titleLabel];
  [titleLabel setFrame:{v9, v10, v6, v8}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(UILabel *)self->_titleLabel sizeThatFits:fits.width, fits.height];
  v6 = v5 + 26.0;
  if (v6 >= width)
  {
    v6 = width;
  }

  v7 = v4 + 4.0;
  result.height = v7;
  result.width = v6;
  return result;
}

@end