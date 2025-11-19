@interface TPInComingCallBottomBarSupplementalButton
- (CGRect)imageRectForContentRect:(CGRect)a3;
- (CGRect)titleRectForContentRect:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (TPInComingCallBottomBarSupplementalButton)initWithFrame:(CGRect)a3;
@end

@implementation TPInComingCallBottomBarSupplementalButton

- (TPInComingCallBottomBarSupplementalButton)initWithFrame:(CGRect)a3
{
  v39[1] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = TPInComingCallBottomBarSupplementalButton;
  v3 = [(TPInComingCallBottomBarSupplementalButton *)&v37 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(TPInComingCallBottomBarSupplementalButton *)v3 titleLabel];
    [v5 setTextAlignment:1];

    v6 = +[TPUIConfiguration defaultFont];
    v7 = [(TPInComingCallBottomBarSupplementalButton *)v4 titleLabel];
    [v7 setFont:v6];

    v8 = [(TPInComingCallBottomBarSupplementalButton *)v4 titleLabel];
    [v8 setLineBreakMode:4];

    v9 = [MEMORY[0x1E69DC888] whiteColor];
    [(TPInComingCallBottomBarSupplementalButton *)v4 setTintColor:v9];

    v10 = [(TPInComingCallBottomBarSupplementalButton *)v4 titleLabel];
    [v10 setNumberOfLines:2];

    v36 = [MEMORY[0x1E69DC730] effectWithBlurRadius:40.0];
    v11 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v36];
    v39[0] = v36;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
    [(UIView *)v11 setBackgroundEffects:v12];

    v13 = [MEMORY[0x1E69DC888] blackColor];
    v14 = [v13 colorWithAlphaComponent:0.15];
    [(UIView *)v11 setBackgroundColor:v14];

    v15 = [(UIView *)v11 layer];
    [v15 setMasksToBounds:1];

    v16 = [(UIView *)v11 layer];
    [v16 setCornerRadius:22.0];

    [(UIView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [(TPInComingCallBottomBarSupplementalButton *)v4 imageView];
    [(TPInComingCallBottomBarSupplementalButton *)v4 insertSubview:v11 belowSubview:v17];

    v29 = MEMORY[0x1E696ACD8];
    v34 = [(UIView *)v11 centerXAnchor];
    v35 = [(TPInComingCallBottomBarSupplementalButton *)v4 imageView];
    v33 = [v35 centerXAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v38[0] = v32;
    v30 = [(UIView *)v11 centerYAnchor];
    v31 = [(TPInComingCallBottomBarSupplementalButton *)v4 imageView];
    v18 = [v31 centerYAnchor];
    v19 = [v30 constraintEqualToAnchor:v18];
    v38[1] = v19;
    v20 = [(UIView *)v11 widthAnchor];
    v21 = [v20 constraintEqualToConstant:44.0];
    v38[2] = v21;
    v22 = [(UIView *)v11 heightAnchor];
    v23 = [(UIView *)v11 widthAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v38[3] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
    [v29 activateConstraints:v25];

    backdropEffectView = v4->_backdropEffectView;
    v4->_backdropEffectView = v11;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v4;
}

- (CGSize)intrinsicContentSize
{
  +[TPUIConfiguration defaultHeight];
  v4 = v3;
  v5 = [(TPInComingCallBottomBarSupplementalButton *)self image];
  [v5 size];
  v7 = v6;

  v8 = [(TPInComingCallBottomBarSupplementalButton *)self titleLabel];
  [v8 intrinsicContentSize];
  v10 = v9;

  if (v7 >= v10)
  {
    v11 = v7;
  }

  else
  {
    v11 = v10;
  }

  if (v4 >= v11)
  {
    v11 = v4;
  }

  v12 = ceil(v11);
  if (v12 <= 100.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 100.0;
  }

  +[TPUIConfiguration defaultHeight];
  v15 = v14;
  v16 = v13;
  result.height = v15;
  result.width = v16;
  return result;
}

- (CGRect)imageRectForContentRect:(CGRect)a3
{
  width = a3.size.width;
  v8.receiver = self;
  v8.super_class = TPInComingCallBottomBarSupplementalButton;
  [(TPInComingCallBottomBarSupplementalButton *)&v8 imageRectForContentRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = width * 0.5 - v4 * 0.5;
  v7 = 2.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)titleRectForContentRect:(CGRect)a3
{
  width = a3.size.width;
  v22[1] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = TPInComingCallBottomBarSupplementalButton;
  [(TPInComingCallBottomBarSupplementalButton *)&v20 titleRectForContentRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = [(TPInComingCallBottomBarSupplementalButton *)self imageForState:0];
  [v5 size];
  v7 = v6 + 20.0;

  +[TPUIConfiguration defaultHeight];
  v9 = v8 - v7;
  v10 = [(TPInComingCallBottomBarSupplementalButton *)self currentTitle];
  v21 = *MEMORY[0x1E69DB648];
  v11 = +[TPUIConfiguration defaultFont];
  v22[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  [v10 boundingRectWithSize:1 options:v12 attributes:0 context:{width, 3.40282347e38}];
  v14 = v13;

  if (v9 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v9;
  }

  v16 = *MEMORY[0x1E69E9840];
  v17 = 0.0;
  v18 = v7;
  v19 = width;
  result.size.height = v15;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

@end