@interface UIKeyboardEmojiVariantViewCell
- (CGSize)intrinsicContentSize;
- (UIKeyboardEmojiVariantViewCell)initWithFrame:(CGRect)frame;
@end

@implementation UIKeyboardEmojiVariantViewCell

- (UIKeyboardEmojiVariantViewCell)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = UIKeyboardEmojiVariantViewCell;
  v3 = [(UIView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[UIKeyboardEmojiDraggableView alloc] initWithFrame:3.0, 3.0, 32.0, 32.0];
    labelView = v3->_labelView;
    v3->_labelView = v4;

    v6 = [off_1E70ECC18 systemFontOfSize:32.0];
    [(UIKeyboardEmojiDraggableView *)v3->_labelView setFont:v6];

    [(UIKeyboardEmojiDraggableView *)v3->_labelView setDragEnabled:_os_feature_enabled_impl()];
    [(UIKeyboardEmojiDraggableView *)v3->_labelView setDelegate:v3];
    v7 = [[UIView alloc] initWithFrame:0.0, 0.0, 38.0, 38.0];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v7;

    layer = [(UIView *)v3->_backgroundView layer];
    [layer setCornerRadius:6.0];

    colorForBackgroundView = [(UIKeyboardEmojiVariantViewCell *)v3 colorForBackgroundView];
    [(UIView *)v3->_backgroundView setBackgroundColor:colorForBackgroundView];

    [(UIView *)v3->_backgroundView setHidden:1];
    [(UIView *)v3 addSubview:v3->_backgroundView];
    [(UIView *)v3 addSubview:v3->_labelView];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v2 = 38.0;
  v3 = 38.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end