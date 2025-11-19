@interface VideosExtrasNavigationBarButton
+ (id)extrasBackButton:(int64_t)a3;
+ (id)extrasNavigationButton:(int64_t)a3;
- (void)layoutSubviews;
@end

@implementation VideosExtrasNavigationBarButton

+ (id)extrasNavigationButton:(int64_t)a3
{
  v5 = [a1 buttonWithType:1];
  v6 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
  v7 = [v6 localizedStringForKey:@"BACK" value:0 table:@"VideosExtras"];
  [v5 setTitle:v7 forState:0];

  v8 = 4.0;
  if (a3 == 1)
  {
    v8 = 2.0;
  }

  [v5 setContentEdgeInsets:{v8, 10.0, v8, 8.0}];
  [v5 setClipsToBounds:1];
  v9 = [v5 layer];
  [v9 setCornerRadius:5.0];

  if ((MEMORY[0x1E6913230]() & 1) == 0)
  {
    v10 = [objc_alloc(MEMORY[0x1E69DD370]) initWithPrivateStyle:11050];
    [v10 setGroupName:@"VideosExtrasBlurGroupName"];
    v11 = v5[93];
    v5[93] = v10;
  }

  v12 = [a1 textDodgeColor];
  v13 = v5[94];
  v5[94] = v12;

  [v5 setNeedsLayout];

  return v5;
}

+ (id)extrasBackButton:(int64_t)a3
{
  v4 = [a1 extrasNavigationButton:?];
  if (extrasBackButton__onceToken != -1)
  {
    +[VideosExtrasNavigationBarButton extrasBackButton:];
  }

  v5 = &extrasBackButton__landscapeBackIndicatorImage;
  if (a3 != 1)
  {
    v5 = &extrasBackButton__backIndicatorImage;
  }

  [v4 setImage:*v5 forState:0];
  [v4 setImageEdgeInsets:{0.0, -8.0, 0.0, 0.0}];

  return v4;
}

void __52__VideosExtrasNavigationBarButton_extrasBackButton___block_invoke()
{
  v0 = [MEMORY[0x1E69DCAB8] kitImageNamed:@"UINavigationBarBackIndicatorDefault"];
  v1 = [v0 imageFlippedForRightToLeftLayoutDirection];
  v2 = extrasBackButton__backIndicatorImage;
  extrasBackButton__backIndicatorImage = v1;

  v5 = [MEMORY[0x1E69DCAB8] kitImageNamed:@"UINavigationBarBackIndicatorLandscape"];
  v3 = [v5 imageFlippedForRightToLeftLayoutDirection];
  v4 = extrasBackButton__landscapeBackIndicatorImage;
  extrasBackButton__landscapeBackIndicatorImage = v3;
}

- (void)layoutSubviews
{
  v34.receiver = self;
  v34.super_class = VideosExtrasNavigationBarButton;
  [(VideosExtrasNavigationBarButton *)&v34 layoutSubviews];
  [(VideosExtrasNavigationBarButton *)self bounds];
  [(UIView *)self->_backdropView setFrame:?];
  v3 = [(UIView *)self->_backdropView superview];

  if (!v3)
  {
    [(VideosExtrasNavigationBarButton *)self addSubview:self->_backdropView];
  }

  v4 = [(VideosExtrasNavigationBarButton *)self layer];
  [v4 setAllowsGroupBlending:0];

  v5 = [objc_opt_class() textFilter];
  v6 = self->_dodgeColor;
  [(VideosExtrasNavigationBarButton *)self setTitleColor:v6 forState:0];
  v7 = [(VideosExtrasNavigationBarButton *)self imageView];
  [v7 setTintColor:v6];

  v8 = [(VideosExtrasNavigationBarButton *)self titleLabel];
  v9 = [(VideosExtrasNavigationBarButton *)self imageView];
  v10 = [v8 layer];
  v11 = [v9 layer];
  [v10 setCompositingFilter:v5];
  [v11 setCompositingFilter:v5];
  v12 = [v10 superlayer];
  v13 = [(VideosExtrasNavigationBarButton *)self layer];

  if (v12 != v13)
  {
    [v8 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [(VideosExtrasNavigationBarButton *)self layer];
    [v22 addSublayer:v10];

    [v10 setFrame:{v15, v17, v19, v21}];
  }

  v23 = [v11 superlayer];
  v24 = [(VideosExtrasNavigationBarButton *)self layer];

  if (v23 != v24)
  {
    [v9 frame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [(VideosExtrasNavigationBarButton *)self layer];
    [v33 addSublayer:v11];

    [v11 setFrame:{v26, v28, v30, v32}];
  }
}

@end