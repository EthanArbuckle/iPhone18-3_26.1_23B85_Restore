@interface UIKeyboardEmojiAndStickerCollectionInputViewKeylineView
- (UIKeyboardEmojiAndStickerCollectionInputViewKeylineView)initWithSuperview:(id)superview;
@end

@implementation UIKeyboardEmojiAndStickerCollectionInputViewKeylineView

- (UIKeyboardEmojiAndStickerCollectionInputViewKeylineView)initWithSuperview:(id)superview
{
  v24[4] = *MEMORY[0x1E69E9840];
  superviewCopy = superview;
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

    subviews = [superviewCopy subviews];
    [superviewCopy insertSubview:v6 atIndex:{objc_msgSend(subviews, "count")}];

    v18 = MEMORY[0x1E69977A0];
    heightAnchor = [(UIView *)v6 heightAnchor];
    v21 = [heightAnchor constraintEqualToConstant:0.35];
    v24[0] = v21;
    topAnchor = [(UIView *)v6 topAnchor];
    topAnchor2 = [superviewCopy topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v24[1] = v9;
    leftAnchor = [(UIView *)v6 leftAnchor];
    leftAnchor2 = [superviewCopy leftAnchor];
    v12 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v24[2] = v12;
    rightAnchor = [(UIView *)v6 rightAnchor];
    rightAnchor2 = [superviewCopy rightAnchor];
    v15 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v24[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    [v18 activateConstraints:v16];
  }

  return v6;
}

@end