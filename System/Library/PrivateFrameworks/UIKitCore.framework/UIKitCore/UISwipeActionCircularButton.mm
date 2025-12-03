@interface UISwipeActionCircularButton
- (UISwipeActionCircularButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation UISwipeActionCircularButton

- (UISwipeActionCircularButton)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = UISwipeActionCircularButton;
  v3 = [(UISwipeActionButton *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[UIView alloc] initWithFrame:0.0, 0.0, 48.0, 48.0];
    [(UISwipeActionButton *)v3 setBackgroundView:v4];

    visualStyle = [(UISwipeActionButton *)v3 visualStyle];
    defaultButtonBackgroundColor = [visualStyle defaultButtonBackgroundColor];
    backgroundView = [(UISwipeActionButton *)v3 backgroundView];
    [backgroundView setBackgroundColor:defaultButtonBackgroundColor];

    backgroundView2 = [(UISwipeActionButton *)v3 backgroundView];
    layer = [backgroundView2 layer];
    [layer setCornerRadius:24.0];

    backgroundView3 = [(UISwipeActionButton *)v3 backgroundView];
    layer2 = [backgroundView3 layer];
    [layer2 setAllowsEdgeAntialiasing:1];

    backgroundView4 = [(UISwipeActionButton *)v3 backgroundView];
    [(UIView *)v3 addSubview:backgroundView4];
  }

  return v3;
}

- (void)layoutSubviews
{
  v56.receiver = self;
  v56.super_class = UISwipeActionCircularButton;
  [(UIButton *)&v56 layoutSubviews];
  [(UIView *)self bounds];
  [(UISwipeActionButton *)self _allowableContentRectForContentRect:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  backgroundView = [(UISwipeActionButton *)self backgroundView];
  [backgroundView frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = UIRectCenteredIntegralRectScale(v13, v15, v17, v19, v4, v6, v8, v10, 0.0);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  backgroundView2 = [(UISwipeActionButton *)self backgroundView];
  [backgroundView2 setFrame:{v20, v22, v24, v26}];

  backgroundView3 = [(UISwipeActionButton *)self backgroundView];
  [(UIView *)self sendSubviewToBack:backgroundView3];

  imageView = [(UIButton *)self imageView];
  [imageView sizeToFit];

  imageView2 = [(UIButton *)self imageView];
  [imageView2 frame];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  if (v38 >= 33.9411255 || v36 >= 33.9411255)
  {
    if (v38 >= v36)
    {
      v47 = v38;
    }

    else
    {
      v47 = v36;
    }

    v48 = UIRectCenteredIntegralRectScale(v32, v34, v36 * (33.9411255 / v47), v38 * (33.9411255 / v47), v4, v6, v8, v10, 0.0);
    v50 = v49;
    v52 = v51;
    v54 = v53;
    imageView3 = [(UIButton *)self imageView];
    [imageView3 setFrame:{v48, v50, v52, v54}];

    imageView4 = [(UIButton *)self imageView];
    [imageView4 setContentMode:1];
  }

  else
  {
    v39 = UIRectCenteredIntegralRectScale(v32, v34, v36, v38, v4, v6, v8, v10, 0.0);
    v41 = v40;
    v43 = v42;
    v45 = v44;
    imageView4 = [(UIButton *)self imageView];
    [imageView4 setFrame:{v39, v41, v43, v45}];
  }
}

- (void)setBackgroundColor:(id)color
{
  v5.receiver = self;
  v5.super_class = UISwipeActionCircularButton;
  colorCopy = color;
  [(UISwipeActionButton *)&v5 setBackgroundColor:colorCopy];
  [(UIButton *)self setTitleColor:colorCopy forState:0, v5.receiver, v5.super_class];
}

@end