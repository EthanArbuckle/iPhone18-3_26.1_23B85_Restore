@interface UIKBEmojiSnapshotSizingView
- (CGSize)intrinsicContentSize;
- (UIKBEmojiSnapshotSizingView)initWithSnapshotView:(id)a3;
@end

@implementation UIKBEmojiSnapshotSizingView

- (UIKBEmojiSnapshotSizingView)initWithSnapshotView:(id)a3
{
  v27[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v26.receiver = self;
  v26.super_class = UIKBEmojiSnapshotSizingView;
  v6 = [(UIView *)&v26 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    v25 = v5;
    objc_storeStrong(&v6->_snapshotView, a3);
    [(UIView *)v7->_snapshotView bounds];
    v7->_snapshotSize.width = v8;
    v7->_snapshotSize.height = v9;
    [(UIView *)v7->_snapshotView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v7 addSubview:v7->_snapshotView];
    v20 = MEMORY[0x1E69977A0];
    v24 = [(UIView *)v7->_snapshotView topAnchor];
    v23 = [(UIView *)v7 topAnchor];
    v22 = [v24 constraintEqualToAnchor:v23];
    v27[0] = v22;
    v21 = [(UIView *)v7->_snapshotView bottomAnchor];
    v10 = [(UIView *)v7 bottomAnchor];
    v11 = [v21 constraintEqualToAnchor:v10];
    v27[1] = v11;
    v12 = [(UIView *)v7->_snapshotView centerXAnchor];
    v13 = [(UIView *)v7 centerXAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v27[2] = v14;
    v15 = [(UIView *)v7->_snapshotView widthAnchor];
    v16 = [(UIView *)v7->_snapshotView heightAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 multiplier:v7->_snapshotSize.width / v7->_snapshotSize.height];
    v27[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
    [v20 activateConstraints:v18];

    v5 = v25;
  }

  return v7;
}

- (CGSize)intrinsicContentSize
{
  width = self->_snapshotSize.width;
  height = self->_snapshotSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end