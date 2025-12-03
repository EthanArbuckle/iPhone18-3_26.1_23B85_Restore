@interface UIKeyboardStickerButtonView
- (UIKeyboardStickerButtonView)initWithFrame:(CGRect)frame;
- (void)handleTap;
- (void)layoutSubviews;
@end

@implementation UIKeyboardStickerButtonView

- (UIKeyboardStickerButtonView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v16.receiver = self;
  v16.super_class = UIKeyboardStickerButtonView;
  v7 = [(UICollectionReusableView *)&v16 initWithFrame:?];
  if (v7)
  {
    v8 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:3 scale:30.0];
    v9 = [UIImage _systemImageNamed:@"sticker" withConfiguration:v8];
    v10 = [UIButton systemButtonWithImage:v9 target:v7 action:sel_handleTap];
    [(UIButton *)v10 setFrame:x, y, width, height];
    imageView = [(UIButton *)v10 imageView];
    [imageView setContentMode:1];

    v12 = +[UIColor secondaryLabelColor];
    [(UIButton *)v10 setTintColor:v12];

    launchStickersButton = v7->_launchStickersButton;
    v7->_launchStickersButton = v10;
    v14 = v10;

    [(UIView *)v7 addSubview:v7->_launchStickersButton];
  }

  return v7;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = UIKeyboardStickerButtonView;
  [(UIView *)&v4 layoutSubviews];
  launchStickersButton = self->_launchStickersButton;
  [(UIView *)self bounds];
  [(UIButton *)launchStickersButton setFrame:?];
}

- (void)handleTap
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"window";
  window = [(UIView *)self window];
  v8[1] = @"windowScene";
  v9[0] = window;
  window2 = [(UIView *)self window];
  windowScene = [window2 windowScene];
  v9[1] = windowScene;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UIEmojiAndStickerShouldPresentPickerNotification" object:0 userInfo:v6];
}

@end