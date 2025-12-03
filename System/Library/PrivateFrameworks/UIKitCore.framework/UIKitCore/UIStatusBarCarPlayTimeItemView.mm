@interface UIStatusBarCarPlayTimeItemView
- (BOOL)updateForNewData:(id)data actions:(int)actions;
- (double)extraLeftPadding;
- (double)extraRightPadding;
- (double)neededSizeForImageSet:(id)set;
- (id)_timeImageSetForColor:(id)color;
@end

@implementation UIStatusBarCarPlayTimeItemView

- (BOOL)updateForNewData:(id)data actions:(int)actions
{
  rawData = [data rawData];
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:rawData + 46 encoding:4];
  v7 = [v6 isEqualToString:self->_timeString];
  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&self->_timeString, v6);
  }

  return v7 ^ 1;
}

- (double)neededSizeForImageSet:(id)set
{
  _timeImageSet = [(UIStatusBarCarPlayTimeItemView *)self _timeImageSet];
  v8.receiver = self;
  v8.super_class = UIStatusBarCarPlayTimeItemView;
  [(UIStatusBarItemView *)&v8 neededSizeForImageSet:_timeImageSet];
  v6 = v5;

  return v6;
}

- (double)extraLeftPadding
{
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  [foregroundStyle scale];

  return -4.0;
}

- (double)extraRightPadding
{
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  [foregroundStyle scale];
  v4 = v3;

  result = -5.0;
  if (v4 == 2.0)
  {
    return -4.0;
  }

  return result;
}

- (id)_timeImageSetForColor:(id)color
{
  colorCopy = color;
  v5 = [(UIStatusBarItemView *)self imageWithText:self->_timeString];
  v6 = v5;
  if (colorCopy)
  {
    image = [v5 image];
    v8 = [image _flatImageWithColor:colorCopy];

    [v6 setImage:v8];
  }

  return v6;
}

@end