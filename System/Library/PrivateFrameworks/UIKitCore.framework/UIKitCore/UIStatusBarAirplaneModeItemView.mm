@interface UIStatusBarAirplaneModeItemView
- (id)contentsImage;
- (void)setVisible:(BOOL)visible frame:(CGRect)frame duration:(double)duration;
@end

@implementation UIStatusBarAirplaneModeItemView

- (void)setVisible:(BOOL)visible frame:(CGRect)frame duration:(double)duration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  visibleCopy = visible;
  if (duration > 0.0 && +[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    v12 = *(&self->super.super.super._viewFlags + 2);
    [(UIView *)self frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    rect = v19;
    v20 = _UIDeviceNativeUserInterfaceIdiom();
    if (visibleCopy)
    {
      if (v20 == 1)
      {
        if ((v12 & 0x400000) != 0)
        {
          v21 = 70.0;
        }

        else
        {
          v21 = -70.0;
        }

        v23 = v14 + v21;
      }

      else if ((v12 & 0x400000) != 0)
      {
        v32.origin.x = v14;
        v32.origin.y = v16;
        v32.size.width = v18;
        v32.size.height = rect;
        v23 = v18 + CGRectGetMaxX(v32);
      }

      else
      {
        v23 = -v18;
      }

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __61__UIStatusBarAirplaneModeItemView_setVisible_frame_duration___block_invoke;
      v31[3] = &unk_1E70F3B20;
      v31[4] = self;
      *&v31[5] = v23;
      *&v31[6] = v16;
      *&v31[7] = v18;
      *&v31[8] = rect;
      [UIView performWithoutAnimation:v31, *&rect];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __61__UIStatusBarAirplaneModeItemView_setVisible_frame_duration___block_invoke_2;
      v30[3] = &unk_1E70F3B20;
      v30[4] = self;
      *&v30[5] = x;
      *&v30[6] = y;
      *&v30[7] = width;
      *&v30[8] = height;
      v24 = 131136;
      v25 = v30;
      durationCopy2 = duration;
    }

    else
    {
      if (v20 == 1)
      {
        v22 = dbl_18A6815B0[(v12 & 0x400000) == 0] + v14;
      }

      else if ((v12 & 0x400000) != 0)
      {
        v33.origin.x = v14;
        v33.origin.y = v16;
        v33.size.width = v18;
        v33.size.height = rect;
        v22 = CGRectGetMaxX(v33) + -70.0;
      }

      else
      {
        v22 = 70.0;
      }

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __61__UIStatusBarAirplaneModeItemView_setVisible_frame_duration___block_invoke_3;
      v29[3] = &unk_1E70F3B20;
      v29[4] = self;
      *&v29[5] = v22;
      *&v29[6] = v16;
      *&v29[7] = v18;
      *&v29[8] = rect;
      v25 = v29;
      durationCopy2 = duration;
      v24 = 65600;
    }

    [UIView animateWithDuration:v24 delay:v25 options:0 animations:durationCopy2 completion:0.0, *&rect];
  }

  else
  {
    v28.receiver = self;
    v28.super_class = UIStatusBarAirplaneModeItemView;
    [(UIStatusBarItemView *)&v28 setVisible:visibleCopy frame:x duration:y, width, height, duration];
  }
}

uint64_t __61__UIStatusBarAirplaneModeItemView_setVisible_frame_duration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 setVisible:1];
}

uint64_t __61__UIStatusBarAirplaneModeItemView_setVisible_frame_duration___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 setVisible:0];
}

- (id)contentsImage
{
  v6.receiver = self;
  v6.super_class = UIStatusBarAirplaneModeItemView;
  contentsImage = [(UIStatusBarIndicatorItemView *)&v6 contentsImage];
  if ([(UIStatusBarItemView *)self _shouldReverseLayoutDirection])
  {
    v4 = [contentsImage imageSetWithOrientation:4];

    contentsImage = v4;
  }

  return contentsImage;
}

@end