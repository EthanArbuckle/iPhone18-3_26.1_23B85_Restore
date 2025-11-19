@interface UISwipeActionCircularButton
- (UISwipeActionCircularButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation UISwipeActionCircularButton

- (UISwipeActionCircularButton)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = UISwipeActionCircularButton;
  v3 = [(UISwipeActionButton *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[UIView alloc] initWithFrame:0.0, 0.0, 48.0, 48.0];
    [(UISwipeActionButton *)v3 setBackgroundView:v4];

    v5 = [(UISwipeActionButton *)v3 visualStyle];
    v6 = [v5 defaultButtonBackgroundColor];
    v7 = [(UISwipeActionButton *)v3 backgroundView];
    [v7 setBackgroundColor:v6];

    v8 = [(UISwipeActionButton *)v3 backgroundView];
    v9 = [v8 layer];
    [v9 setCornerRadius:24.0];

    v10 = [(UISwipeActionButton *)v3 backgroundView];
    v11 = [v10 layer];
    [v11 setAllowsEdgeAntialiasing:1];

    v12 = [(UISwipeActionButton *)v3 backgroundView];
    [(UIView *)v3 addSubview:v12];
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
  v11 = [(UISwipeActionButton *)self backgroundView];
  [v11 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = UIRectCenteredIntegralRectScale(v13, v15, v17, v19, v4, v6, v8, v10, 0.0);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [(UISwipeActionButton *)self backgroundView];
  [v27 setFrame:{v20, v22, v24, v26}];

  v28 = [(UISwipeActionButton *)self backgroundView];
  [(UIView *)self sendSubviewToBack:v28];

  v29 = [(UIButton *)self imageView];
  [v29 sizeToFit];

  v30 = [(UIButton *)self imageView];
  [v30 frame];
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
    v55 = [(UIButton *)self imageView];
    [v55 setFrame:{v48, v50, v52, v54}];

    v46 = [(UIButton *)self imageView];
    [v46 setContentMode:1];
  }

  else
  {
    v39 = UIRectCenteredIntegralRectScale(v32, v34, v36, v38, v4, v6, v8, v10, 0.0);
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = [(UIButton *)self imageView];
    [v46 setFrame:{v39, v41, v43, v45}];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = UISwipeActionCircularButton;
  v4 = a3;
  [(UISwipeActionButton *)&v5 setBackgroundColor:v4];
  [(UIButton *)self setTitleColor:v4 forState:0, v5.receiver, v5.super_class];
}

@end