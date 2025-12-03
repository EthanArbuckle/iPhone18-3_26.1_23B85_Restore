@interface TPInComingCallBottomBarSupplementalButton
- (CGRect)imageRectForContentRect:(CGRect)rect;
- (CGRect)titleRectForContentRect:(CGRect)rect;
- (CGSize)intrinsicContentSize;
- (TPInComingCallBottomBarSupplementalButton)initWithFrame:(CGRect)frame;
@end

@implementation TPInComingCallBottomBarSupplementalButton

- (TPInComingCallBottomBarSupplementalButton)initWithFrame:(CGRect)frame
{
  v39[1] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = TPInComingCallBottomBarSupplementalButton;
  v3 = [(TPInComingCallBottomBarSupplementalButton *)&v37 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    titleLabel = [(TPInComingCallBottomBarSupplementalButton *)v3 titleLabel];
    [titleLabel setTextAlignment:1];

    v6 = +[TPUIConfiguration defaultFont];
    titleLabel2 = [(TPInComingCallBottomBarSupplementalButton *)v4 titleLabel];
    [titleLabel2 setFont:v6];

    titleLabel3 = [(TPInComingCallBottomBarSupplementalButton *)v4 titleLabel];
    [titleLabel3 setLineBreakMode:4];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(TPInComingCallBottomBarSupplementalButton *)v4 setTintColor:whiteColor];

    titleLabel4 = [(TPInComingCallBottomBarSupplementalButton *)v4 titleLabel];
    [titleLabel4 setNumberOfLines:2];

    v36 = [MEMORY[0x1E69DC730] effectWithBlurRadius:40.0];
    v11 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v36];
    v39[0] = v36;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
    [(UIView *)v11 setBackgroundEffects:v12];

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v14 = [blackColor colorWithAlphaComponent:0.15];
    [(UIView *)v11 setBackgroundColor:v14];

    layer = [(UIView *)v11 layer];
    [layer setMasksToBounds:1];

    layer2 = [(UIView *)v11 layer];
    [layer2 setCornerRadius:22.0];

    [(UIView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    imageView = [(TPInComingCallBottomBarSupplementalButton *)v4 imageView];
    [(TPInComingCallBottomBarSupplementalButton *)v4 insertSubview:v11 belowSubview:imageView];

    v29 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(UIView *)v11 centerXAnchor];
    imageView2 = [(TPInComingCallBottomBarSupplementalButton *)v4 imageView];
    centerXAnchor2 = [imageView2 centerXAnchor];
    v32 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v38[0] = v32;
    centerYAnchor = [(UIView *)v11 centerYAnchor];
    imageView3 = [(TPInComingCallBottomBarSupplementalButton *)v4 imageView];
    centerYAnchor2 = [imageView3 centerYAnchor];
    v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v38[1] = v19;
    widthAnchor = [(UIView *)v11 widthAnchor];
    v21 = [widthAnchor constraintEqualToConstant:44.0];
    v38[2] = v21;
    heightAnchor = [(UIView *)v11 heightAnchor];
    widthAnchor2 = [(UIView *)v11 widthAnchor];
    v24 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
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
  image = [(TPInComingCallBottomBarSupplementalButton *)self image];
  [image size];
  v7 = v6;

  titleLabel = [(TPInComingCallBottomBarSupplementalButton *)self titleLabel];
  [titleLabel intrinsicContentSize];
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

- (CGRect)imageRectForContentRect:(CGRect)rect
{
  width = rect.size.width;
  v8.receiver = self;
  v8.super_class = TPInComingCallBottomBarSupplementalButton;
  [(TPInComingCallBottomBarSupplementalButton *)&v8 imageRectForContentRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v6 = width * 0.5 - v4 * 0.5;
  v7 = 2.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)titleRectForContentRect:(CGRect)rect
{
  width = rect.size.width;
  v22[1] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = TPInComingCallBottomBarSupplementalButton;
  [(TPInComingCallBottomBarSupplementalButton *)&v20 titleRectForContentRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v5 = [(TPInComingCallBottomBarSupplementalButton *)self imageForState:0];
  [v5 size];
  v7 = v6 + 20.0;

  +[TPUIConfiguration defaultHeight];
  v9 = v8 - v7;
  currentTitle = [(TPInComingCallBottomBarSupplementalButton *)self currentTitle];
  v21 = *MEMORY[0x1E69DB648];
  v11 = +[TPUIConfiguration defaultFont];
  v22[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  [currentTitle boundingRectWithSize:1 options:v12 attributes:0 context:{width, 3.40282347e38}];
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