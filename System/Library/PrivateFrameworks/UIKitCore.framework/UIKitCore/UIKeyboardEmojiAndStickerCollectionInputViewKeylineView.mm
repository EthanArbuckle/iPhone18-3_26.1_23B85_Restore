@interface UIKeyboardEmojiAndStickerCollectionInputViewKeylineView
- (UIKeyboardEmojiAndStickerCollectionInputViewKeylineView)initWithSuperview:(id)a3;
@end

@implementation UIKeyboardEmojiAndStickerCollectionInputViewKeylineView

- (UIKeyboardEmojiAndStickerCollectionInputViewKeylineView)initWithSuperview:(id)a3
{
  v24[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = UIKeyboardEmojiAndStickerCollectionInputViewKeylineView;
  v5 = [(UIView *)&v23 init];
  v6 = v5;
  if (v5)
  {
    [(UIView *)v5 setAlpha:0.0];
    [(UIView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = +[UIColor separatorColor];
    [(UIView *)v6 setBackgroundColor:v7];

    v8 = [v4 subviews];
    [v4 insertSubview:v6 atIndex:{objc_msgSend(v8, "count")}];

    v18 = MEMORY[0x1E69977A0];
    v22 = [(UIView *)v6 heightAnchor];
    v21 = [v22 constraintEqualToConstant:0.35];
    v24[0] = v21;
    v20 = [(UIView *)v6 topAnchor];
    v19 = [v4 topAnchor];
    v9 = [v20 constraintEqualToAnchor:v19];
    v24[1] = v9;
    v10 = [(UIView *)v6 leftAnchor];
    v11 = [v4 leftAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v24[2] = v12;
    v13 = [(UIView *)v6 rightAnchor];
    v14 = [v4 rightAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v24[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    [v18 activateConstraints:v16];
  }

  return v6;
}

@end