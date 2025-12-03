@interface VideosExtrasNavigationBarButton
+ (id)extrasBackButton:(int64_t)button;
+ (id)extrasNavigationButton:(int64_t)button;
- (void)layoutSubviews;
@end

@implementation VideosExtrasNavigationBarButton

+ (id)extrasNavigationButton:(int64_t)button
{
  v5 = [self buttonWithType:1];
  vui_videosUIBundle = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
  v7 = [vui_videosUIBundle localizedStringForKey:@"BACK" value:0 table:@"VideosExtras"];
  [v5 setTitle:v7 forState:0];

  v8 = 4.0;
  if (button == 1)
  {
    v8 = 2.0;
  }

  [v5 setContentEdgeInsets:{v8, 10.0, v8, 8.0}];
  [v5 setClipsToBounds:1];
  layer = [v5 layer];
  [layer setCornerRadius:5.0];

  if ((MEMORY[0x1E6913230]() & 1) == 0)
  {
    v10 = [objc_alloc(MEMORY[0x1E69DD370]) initWithPrivateStyle:11050];
    [v10 setGroupName:@"VideosExtrasBlurGroupName"];
    v11 = v5[93];
    v5[93] = v10;
  }

  textDodgeColor = [self textDodgeColor];
  v13 = v5[94];
  v5[94] = textDodgeColor;

  [v5 setNeedsLayout];

  return v5;
}

+ (id)extrasBackButton:(int64_t)button
{
  v4 = [self extrasNavigationButton:?];
  if (extrasBackButton__onceToken != -1)
  {
    +[VideosExtrasNavigationBarButton extrasBackButton:];
  }

  v5 = &extrasBackButton__landscapeBackIndicatorImage;
  if (button != 1)
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
  superview = [(UIView *)self->_backdropView superview];

  if (!superview)
  {
    [(VideosExtrasNavigationBarButton *)self addSubview:self->_backdropView];
  }

  layer = [(VideosExtrasNavigationBarButton *)self layer];
  [layer setAllowsGroupBlending:0];

  textFilter = [objc_opt_class() textFilter];
  v6 = self->_dodgeColor;
  [(VideosExtrasNavigationBarButton *)self setTitleColor:v6 forState:0];
  imageView = [(VideosExtrasNavigationBarButton *)self imageView];
  [imageView setTintColor:v6];

  titleLabel = [(VideosExtrasNavigationBarButton *)self titleLabel];
  imageView2 = [(VideosExtrasNavigationBarButton *)self imageView];
  layer2 = [titleLabel layer];
  layer3 = [imageView2 layer];
  [layer2 setCompositingFilter:textFilter];
  [layer3 setCompositingFilter:textFilter];
  superlayer = [layer2 superlayer];
  layer4 = [(VideosExtrasNavigationBarButton *)self layer];

  if (superlayer != layer4)
  {
    [titleLabel frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    layer5 = [(VideosExtrasNavigationBarButton *)self layer];
    [layer5 addSublayer:layer2];

    [layer2 setFrame:{v15, v17, v19, v21}];
  }

  superlayer2 = [layer3 superlayer];
  layer6 = [(VideosExtrasNavigationBarButton *)self layer];

  if (superlayer2 != layer6)
  {
    [imageView2 frame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    layer7 = [(VideosExtrasNavigationBarButton *)self layer];
    [layer7 addSublayer:layer3];

    [layer3 setFrame:{v26, v28, v30, v32}];
  }
}

@end