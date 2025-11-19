@interface UIStatusBarDateTimeItemView
- (BOOL)updateForNewData:(id)a3 actions:(int)a4;
- (double)extraRightPadding;
- (id)accessibilityHUDRepresentation;
- (void)setFrame:(CGRect)a3;
- (void)setVisible:(BOOL)a3 frame:(CGRect)a4 duration:(double)a5;
@end

@implementation UIStatusBarDateTimeItemView

- (BOOL)updateForNewData:(id)a3 actions:(int)a4
{
  v5 = [a3 rawData];
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:objc_msgSend(objc_opt_class() encoding:{"_cStringFromData:", v5), 4}];
  v7 = [v6 isEqualToString:self->_dateTimeString];
  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&self->_dateTimeString, v6);
  }

  return v7 ^ 1;
}

- (void)setVisible:(BOOL)a3 frame:(CGRect)a4 duration:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  if (self->_useCustomFadeAnimation)
  {
    if ([(UIStatusBarItemView *)self isVisible]!= a3)
    {
      [(UIStatusBarItemView *)self setVisible:v10 settingAlpha:0];
      if (a5 <= 0.0)
      {
        v12 = [(UIStatusBarItemView *)self isVisible];
        v13 = 0.0;
        if (v12)
        {
          v13 = 1.0;
        }

        [(UIView *)self setAlpha:v13];
      }

      else
      {
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __57__UIStatusBarDateTimeItemView_setVisible_frame_duration___block_invoke;
        v17[3] = &unk_1E70F3590;
        v17[4] = self;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __57__UIStatusBarDateTimeItemView_setVisible_frame_duration___block_invoke_2;
        v15[3] = &unk_1E7119868;
        v16 = v10;
        *&v15[5] = a5;
        v15[4] = self;
        [UIView animateWithDuration:32 delay:v17 options:v15 animations:a5 * 0.2 completion:0.0];
      }
    }

    [(UIStatusBarDateTimeItemView *)self setFrame:x, y, width, height];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = UIStatusBarDateTimeItemView;
    [(UIStatusBarItemView *)&v14 setVisible:a3 frame:a4.origin.x duration:a4.origin.y, a4.size.width, a4.size.height, a5];
  }
}

uint64_t __57__UIStatusBarDateTimeItemView_setVisible_frame_duration___block_invoke_2(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    v4[5] = v1;
    v4[6] = v2;
    v3 = *(result + 40) * 0.5;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __57__UIStatusBarDateTimeItemView_setVisible_frame_duration___block_invoke_3;
    v4[3] = &unk_1E70F3590;
    v4[4] = *(result + 32);
    return [UIView animateWithDuration:32 delay:v4 options:0 animations:v3 completion:0.0];
  }

  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v19.receiver = self;
  v19.super_class = UIStatusBarDateTimeItemView;
  [(UIView *)&v19 setFrame:x, y, width, height];
  [(UIView *)self frame];
  v21.origin.x = v9;
  v21.origin.y = v11;
  v21.size.width = v13;
  v21.size.height = v15;
  if (!CGRectEqualToRect(v20, v21))
  {
    v16 = [(UIView *)self _screen];
    v17 = [objc_opt_self() mainScreen];

    if (v16 == v17)
    {
      v18 = [MEMORY[0x1E696AD88] defaultCenter];
      [v18 postNotificationName:@"UIStatusBarTimeItemViewDidMoveNotification" object:0];
    }
  }
}

- (double)extraRightPadding
{
  v3 = _UIDeviceNativeUserInterfaceIdiom();
  result = 4.0;
  if (v3 != 1)
  {
    v5.receiver = self;
    v5.super_class = UIStatusBarDateTimeItemView;
    [(UIStatusBarItemView *)&v5 extraRightPadding];
  }

  return result;
}

- (id)accessibilityHUDRepresentation
{
  v2 = [[UIAccessibilityHUDItem alloc] initWithTitle:self->_dateTimeString image:0 imageInsets:0.0, 0.0, 0.0, 0.0];

  return v2;
}

@end