@interface _TVRMatchPointArtworkView
- (BOOL)touchLocationIsConsideredCenter:(CGPoint)a3;
- (_TVRMatchPointArtworkView)initWithFrame:(CGRect)a3;
- (void)highlightForButtonType:(int64_t)a3 enabled:(BOOL)a4;
- (void)layoutSubviews;
@end

@implementation _TVRMatchPointArtworkView

- (_TVRMatchPointArtworkView)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = _TVRMatchPointArtworkView;
  v3 = [(_TVRMatchPointArtworkView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRMatchPointArtworkView *)v3 setUserInteractionEnabled:0];
    v5 = [(_TVRMatchPointArtworkView *)v4 layer];
    [v5 setAllowsGroupBlending:0];

    v6 = _TVRMakeDirectionalImageView(@"DirectionalControlArrowUp");
    upImageView = v4->_upImageView;
    v4->_upImageView = v6;

    v8 = _TVRMakeDirectionalImageView(@"DirectionalControlArrowRight");
    rightImageView = v4->_rightImageView;
    v4->_rightImageView = v8;

    v10 = _TVRMakeDirectionalImageView(@"DirectionalControlArrowDown");
    downImageView = v4->_downImageView;
    v4->_downImageView = v10;

    v12 = _TVRMakeDirectionalImageView(@"DirectionalControlArrowLeft");
    leftImageView = v4->_leftImageView;
    v4->_leftImageView = v12;

    [(_TVRMatchPointArtworkView *)v4 addSubview:v4->_upImageView];
    [(_TVRMatchPointArtworkView *)v4 addSubview:v4->_rightImageView];
    [(_TVRMatchPointArtworkView *)v4 addSubview:v4->_downImageView];
    [(_TVRMatchPointArtworkView *)v4 addSubview:v4->_leftImageView];
    v14 = objc_alloc_init(MEMORY[0x277D75D18]);
    selectIndicator = v4->_selectIndicator;
    v4->_selectIndicator = v14;

    [(UIView *)v4->_selectIndicator _setContinuousCornerRadius:24.0];
    v16 = v4->_selectIndicator;
    v17 = [MEMORY[0x277D75348] whiteColor];
    [(UIView *)v16 setBackgroundColor:v17];

    [(UIView *)v4->_selectIndicator setAlpha:0.24];
    v18 = [(UIView *)v4->_selectIndicator layer];
    v19 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    [v18 setCompositingFilter:v19];

    [(_TVRMatchPointArtworkView *)v4 addSubview:v4->_selectIndicator];
  }

  return v4;
}

- (void)highlightForButtonType:(int64_t)a3 enabled:(BOOL)a4
{
  if (a3 <= 12)
  {
    if (a3 == 1)
    {
      v4 = &OBJC_IVAR____TVRMatchPointArtworkView__selectIndicator;
    }

    else
    {
      if (a3 != 12)
      {
        return;
      }

      v4 = &OBJC_IVAR____TVRMatchPointArtworkView__upImageView;
    }
  }

  else
  {
    switch(a3)
    {
      case 13:
        v4 = &OBJC_IVAR____TVRMatchPointArtworkView__downImageView;
        break;
      case 14:
        v4 = &OBJC_IVAR____TVRMatchPointArtworkView__leftImageView;
        break;
      case 15:
        v4 = &OBJC_IVAR____TVRMatchPointArtworkView__rightImageView;
        break;
      default:
        return;
    }
  }

  v5 = *(&self->super.super.super.isa + *v4);
  v6 = 0.24;
  if (a4)
  {
    v6 = 0.65;
  }

  [v5 setAlpha:v6];
}

- (void)layoutSubviews
{
  [(_TVRMatchPointArtworkView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(_TVRMatchPointArtworkView *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v11 contentInsets];
    v4 = v4 + v12;
    v6 = v6 + v13;
    v8 = v8 - (v12 + v14);
    v10 = v10 - (v13 + v15);
  }

  selectIndicator = self->_selectIndicator;
  UIRectCenteredIntegralRect();
  [(UIView *)selectIndicator setFrame:?];
  [(UIImageView *)self->_upImageView setFrame:_TVRImageFrameForDirectionalImage(self->_upImageView, 1, v4, v6, v8, v10)];
  [(UIImageView *)self->_rightImageView setFrame:_TVRImageFrameForDirectionalImage(self->_rightImageView, 8, v4, v6, v8, v10)];
  [(UIImageView *)self->_downImageView setFrame:_TVRImageFrameForDirectionalImage(self->_downImageView, 4, v4, v6, v8, v10)];
  [(UIImageView *)self->_leftImageView setFrame:_TVRImageFrameForDirectionalImage(self->_leftImageView, 2, v4, v6, v8, v10)];
  v17.receiver = self;
  v17.super_class = _TVRMatchPointArtworkView;
  [(_TVRMatchPointArtworkView *)&v17 layoutSubviews];
}

- (BOOL)touchLocationIsConsideredCenter:(CGPoint)a3
{
  [(_TVRMatchPointArtworkView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(UIView *)self->_selectIndicator bounds];
  v12 = CGRectGetWidth(v24) + 20.0;
  [(UIView *)self->_selectIndicator bounds];
  v13 = CGRectGetHeight(v25) + 20.0;
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  v14 = (CGRectGetWidth(v26) - v12) * 0.5;
  v27.origin.x = v5;
  v27.origin.y = v7;
  v27.size.width = v9;
  v27.size.height = v11;
  v15 = (CGRectGetHeight(v27) - v13) * 0.5;
  v16 = v14;
  v17 = v12;
  v18 = v13;
  y = a3.y;
  x = a3.x;

  return CGRectContainsPoint(*&v16, *&x);
}

@end