@interface UIStatusBarCarPlayTimeItemView
- (BOOL)updateForNewData:(id)a3 actions:(int)a4;
- (double)extraLeftPadding;
- (double)extraRightPadding;
- (double)neededSizeForImageSet:(id)a3;
- (id)_timeImageSetForColor:(id)a3;
@end

@implementation UIStatusBarCarPlayTimeItemView

- (BOOL)updateForNewData:(id)a3 actions:(int)a4
{
  v5 = [a3 rawData];
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v5 + 46 encoding:4];
  v7 = [v6 isEqualToString:self->_timeString];
  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&self->_timeString, v6);
  }

  return v7 ^ 1;
}

- (double)neededSizeForImageSet:(id)a3
{
  v4 = [(UIStatusBarCarPlayTimeItemView *)self _timeImageSet];
  v8.receiver = self;
  v8.super_class = UIStatusBarCarPlayTimeItemView;
  [(UIStatusBarItemView *)&v8 neededSizeForImageSet:v4];
  v6 = v5;

  return v6;
}

- (double)extraLeftPadding
{
  v2 = [(UIStatusBarItemView *)self foregroundStyle];
  [v2 scale];

  return -4.0;
}

- (double)extraRightPadding
{
  v2 = [(UIStatusBarItemView *)self foregroundStyle];
  [v2 scale];
  v4 = v3;

  result = -5.0;
  if (v4 == 2.0)
  {
    return -4.0;
  }

  return result;
}

- (id)_timeImageSetForColor:(id)a3
{
  v4 = a3;
  v5 = [(UIStatusBarItemView *)self imageWithText:self->_timeString];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 image];
    v8 = [v7 _flatImageWithColor:v4];

    [v6 setImage:v8];
  }

  return v6;
}

@end