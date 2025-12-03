@interface UIKeyboardStickerEmptyContentView
- (UIKeyboardStickerEmptyContentView)initWithFrame:(CGRect)frame;
- (void)handleTap;
- (void)layoutSubviews;
@end

@implementation UIKeyboardStickerEmptyContentView

- (UIKeyboardStickerEmptyContentView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v24.receiver = self;
  v24.super_class = UIKeyboardStickerEmptyContentView;
  v7 = [(UICollectionReusableView *)&v24 initWithFrame:?];
  if (v7)
  {
    v8 = +[UIContentUnavailableConfiguration emptyConfiguration];
    v9 = _UINSLocalizedStringWithDefaultValue(@"Stickers", @"Stickers");
    [v8 setText:v9];
    v10 = _UINSLocalizedStringWithDefaultValue(@"Send stickers you make from photos, emoji, or your very own Memoji.", @"Send stickers you make from photos, emoji, or your very own Memoji.");
    [v8 setSecondaryText:v10];

    v11 = _UINSLocalizedStringWithDefaultValue(@"Open Stickers", @"Open Stickers");
    button = [v8 button];
    [button setTitle:v11];

    objc_initWeak(&location, v7);
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __51__UIKeyboardStickerEmptyContentView_initWithFrame___block_invoke;
    v21 = &unk_1E70F7450;
    objc_copyWeak(&v22, &location);
    v13 = [UIAction actionWithHandler:&v18];
    buttonProperties = [v8 buttonProperties];
    [buttonProperties setPrimaryAction:v13];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    v15 = [[UIContentUnavailableView alloc] initWithConfiguration:v8];
    unavailableView = v7->_unavailableView;
    v7->_unavailableView = &v15->super;

    [(UIView *)v7->_unavailableView setTranslatesAutoresizingMaskIntoConstraints:1];
    [(UIView *)v7->_unavailableView setFrame:x, y, width, height];
    [(UIView *)v7 addSubview:v7->_unavailableView];
  }

  return v7;
}

void __51__UIKeyboardStickerEmptyContentView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleTap];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = UIKeyboardStickerEmptyContentView;
  [(UIView *)&v4 layoutSubviews];
  unavailableView = self->_unavailableView;
  [(UIView *)self bounds];
  [(UIView *)unavailableView setFrame:?];
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