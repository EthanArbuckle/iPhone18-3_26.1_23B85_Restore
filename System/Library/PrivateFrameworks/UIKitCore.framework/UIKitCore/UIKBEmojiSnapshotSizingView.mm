@interface UIKBEmojiSnapshotSizingView
- (CGSize)intrinsicContentSize;
- (UIKBEmojiSnapshotSizingView)initWithSnapshotView:(id)view;
@end

@implementation UIKBEmojiSnapshotSizingView

- (UIKBEmojiSnapshotSizingView)initWithSnapshotView:(id)view
{
  v27[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v26.receiver = self;
  v26.super_class = UIKBEmojiSnapshotSizingView;
  v6 = [(UIView *)&v26 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    v25 = viewCopy;
    objc_storeStrong(&v6->_snapshotView, view);
    [(UIView *)v7->_snapshotView bounds];
    v7->_snapshotSize.width = v8;
    v7->_snapshotSize.height = v9;
    [(UIView *)v7->_snapshotView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v7 addSubview:v7->_snapshotView];
    v20 = MEMORY[0x1E69977A0];
    topAnchor = [(UIView *)v7->_snapshotView topAnchor];
    topAnchor2 = [(UIView *)v7 topAnchor];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v27[0] = v22;
    bottomAnchor = [(UIView *)v7->_snapshotView bottomAnchor];
    bottomAnchor2 = [(UIView *)v7 bottomAnchor];
    v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v27[1] = v11;
    centerXAnchor = [(UIView *)v7->_snapshotView centerXAnchor];
    centerXAnchor2 = [(UIView *)v7 centerXAnchor];
    v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v27[2] = v14;
    widthAnchor = [(UIView *)v7->_snapshotView widthAnchor];
    heightAnchor = [(UIView *)v7->_snapshotView heightAnchor];
    v17 = [widthAnchor constraintEqualToAnchor:heightAnchor multiplier:v7->_snapshotSize.width / v7->_snapshotSize.height];
    v27[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
    [v20 activateConstraints:v18];

    viewCopy = v25;
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