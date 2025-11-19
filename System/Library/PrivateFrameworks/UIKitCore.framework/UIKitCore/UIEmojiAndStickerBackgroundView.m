@interface UIEmojiAndStickerBackgroundView
- (UIEmojiAndStickerBackgroundView)initWithFrame:(CGRect)a3;
- (id)createHittableView;
@end

@implementation UIEmojiAndStickerBackgroundView

- (UIEmojiAndStickerBackgroundView)initWithFrame:(CGRect)a3
{
  v36[8] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = UIEmojiAndStickerBackgroundView;
  v3 = [(UIView *)&v35 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(UIEmojiAndStickerBackgroundView *)v3 createHittableView];
    topRow = v4->_topRow;
    v4->_topRow = v5;

    v7 = [(UIEmojiAndStickerBackgroundView *)v4 createHittableView];
    secondRow = v4->_secondRow;
    v4->_secondRow = v7;

    [(UIView *)v4 addSubview:v4->_topRow];
    [(UIView *)v4 addSubview:v4->_secondRow];
    v9 = [(UIView *)v4->_topRow heightAnchor];
    v10 = [v9 constraintEqualToConstant:v4->_cutoutHeight];
    firstRowHeightConstraint = v4->_firstRowHeightConstraint;
    v4->_firstRowHeightConstraint = v10;

    v34 = [(UIView *)v4->_topRow topAnchor];
    v33 = [(UIView *)v4 topAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v36[0] = v32;
    v36[1] = v4->_firstRowHeightConstraint;
    v31 = [(UIView *)v4->_topRow leadingAnchor];
    v30 = [(UIView *)v4 leadingAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v36[2] = v29;
    v28 = [(UIView *)v4->_topRow widthAnchor];
    v27 = [(UIView *)v4 widthAnchor];
    v26 = [v28 constraintEqualToAnchor:v27 multiplier:0.0];
    v36[3] = v26;
    v25 = [(UIView *)v4->_secondRow topAnchor];
    v24 = [(UIView *)v4->_topRow bottomAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v36[4] = v23;
    v22 = [(UIView *)v4->_secondRow bottomAnchor];
    v12 = [(UIView *)v4 bottomAnchor];
    v13 = [v22 constraintEqualToAnchor:v12];
    v36[5] = v13;
    v14 = [(UIView *)v4->_secondRow leadingAnchor];
    v15 = [(UIView *)v4 leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v36[6] = v16;
    v17 = [(UIView *)v4->_secondRow trailingAnchor];
    v18 = [(UIView *)v4 trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v36[7] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:8];

    [MEMORY[0x1E69977A0] activateConstraints:v20];
  }

  return v4;
}

- (id)createHittableView
{
  v2 = [UIView alloc];
  v3 = [(UIView *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(UIView *)v3 layer];
  [v4 setHitTestsAsOpaque:1];

  return v3;
}

@end