@interface TPInComingCallBottomBarButton
- (CGRect)imageRectForContentRect:(CGRect)a3;
- (CGRect)titleRectForContentRect:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (TPInComingCallBottomBarButton)initWithFrame:(CGRect)a3;
- (double)titleRectYOffset;
@end

@implementation TPInComingCallBottomBarButton

- (TPInComingCallBottomBarButton)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = TPInComingCallBottomBarButton;
  v3 = [(TPInComingCallBottomBarButton *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v3)
  {
    +[TPUIConfiguration defaultHeight];
    [(TPInComingCallBottomBarButton *)v3 setDiameter:?];
    v4 = [(TPInComingCallBottomBarButton *)v3 titleLabel];
    [v4 setTextAlignment:1];

    v5 = +[TPUIConfiguration defaultFont];
    v6 = [(TPInComingCallBottomBarButton *)v3 titleLabel];
    [v6 setFont:v5];

    v7 = [(TPInComingCallBottomBarButton *)v3 titleLabel];
    [v7 setLineBreakMode:4];

    v8 = [MEMORY[0x1E69DC888] whiteColor];
    [(TPInComingCallBottomBarButton *)v3 setTintColor:v8];

    v9 = [(TPInComingCallBottomBarButton *)v3 titleLabel];
    [v9 setNumberOfLines:0];

    [(TPInComingCallBottomBarButton *)v3 diameter];
    v11 = v10 * 0.5;
    v12 = [(TPInComingCallBottomBarButton *)v3 layer];
    [v12 setCornerRadius:v11];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  [(TPInComingCallBottomBarButton *)self diameter];
  v4 = v3;
  [(TPInComingCallBottomBarButton *)self diameter];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (CGRect)imageRectForContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v17.receiver = self;
  v17.super_class = TPInComingCallBottomBarButton;
  [(TPInComingCallBottomBarButton *)&v17 imageRectForContentRect:a3.origin.x, a3.origin.y];
  v6 = v5;
  v8 = v7;
  x = width * 0.5 - v5 * 0.5;
  y = height * 0.5 - v7 * 0.5;
  v11 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v11 scale];
  if (v12 == 1.0)
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = v6;
    v18.size.height = v8;
    v19 = CGRectIntegral(v18);
    x = v19.origin.x;
    y = v19.origin.y;
    v6 = v19.size.width;
    v8 = v19.size.height;
  }

  v13 = x;
  v14 = y;
  v15 = v6;
  v16 = v8;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)titleRectForContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [(TPInComingCallBottomBarButton *)self currentTitle:a3.origin.x];
  if (v10)
  {
    v11 = v10;
    v12 = [(TPInComingCallBottomBarButton *)self currentTitle];
    v13 = [v12 length];

    if (v13)
    {
      v14 = [(TPInComingCallBottomBarButton *)self titleLabel];
      [v14 preferredMaxLayoutWidth];
      v16 = v15;
      v17 = [v14 font];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = [objc_opt_class() defaultFont];
      }

      v20 = v19;

      v40 = *MEMORY[0x1E69DB648];
      v41[0] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
      v22 = [(TPInComingCallBottomBarButton *)self currentTitle];
      [v22 boundingRectWithSize:1 options:v21 attributes:0 context:{3.40282347e38, 3.40282347e38}];
      v24 = v23;
      v26 = v25;

      v27 = ceil(v24);
      if (v16 >= v27)
      {
        v8 = v27;
      }

      else
      {
        v8 = v16;
      }

      if (v8 == v16)
      {
        v28 = [(TPInComingCallBottomBarButton *)self currentTitle];
        [v28 boundingRectWithSize:1 options:v21 attributes:0 context:{v16, 3.40282347e38}];
        v30 = v29;

        v31 = ceil(v30);
        if (v31 <= 45.0)
        {
          v9 = v31;
        }

        else
        {
          v9 = 45.0;
        }
      }

      else
      {
        v9 = ceil(v26);
      }

      v32 = width * 0.5 - v8 * 0.5;
      [(TPInComingCallBottomBarButton *)self titleRectYOffset];
      v34 = height + v33;
      if (v8 == v16 && v9 == 45.0)
      {
        [v14 setAdjustsFontSizeToFitWidth:1];
      }

      v6 = ceil(v32);
      v7 = ceil(v34);
    }
  }

  v35 = *MEMORY[0x1E69E9840];
  v36 = v6;
  v37 = v7;
  v38 = v8;
  v39 = v9;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- (double)titleRectYOffset
{
  if (titleRectYOffset_onceToken != -1)
  {
    [TPInComingCallBottomBarButton titleRectYOffset];
  }

  return *&titleRectYOffset_yOffset;
}

unint64_t __49__TPInComingCallBottomBarButton_titleRectYOffset__block_invoke()
{
  result = +[TPUIConfiguration inCallBottomBarSpacing];
  v1 = 8.0;
  if (result == 6)
  {
    v1 = 11.0;
  }

  titleRectYOffset_yOffset = *&v1;
  return result;
}

@end