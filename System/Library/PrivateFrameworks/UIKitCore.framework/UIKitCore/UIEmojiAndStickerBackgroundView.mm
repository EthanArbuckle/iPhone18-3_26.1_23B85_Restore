@interface UIEmojiAndStickerBackgroundView
- (UIEmojiAndStickerBackgroundView)initWithFrame:(CGRect)frame;
- (id)createHittableView;
@end

@implementation UIEmojiAndStickerBackgroundView

- (UIEmojiAndStickerBackgroundView)initWithFrame:(CGRect)frame
{
  v36[8] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = UIEmojiAndStickerBackgroundView;
  v3 = [(UIView *)&v35 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    createHittableView = [(UIEmojiAndStickerBackgroundView *)v3 createHittableView];
    topRow = v4->_topRow;
    v4->_topRow = createHittableView;

    createHittableView2 = [(UIEmojiAndStickerBackgroundView *)v4 createHittableView];
    secondRow = v4->_secondRow;
    v4->_secondRow = createHittableView2;

    [(UIView *)v4 addSubview:v4->_topRow];
    [(UIView *)v4 addSubview:v4->_secondRow];
    heightAnchor = [(UIView *)v4->_topRow heightAnchor];
    v10 = [heightAnchor constraintEqualToConstant:v4->_cutoutHeight];
    firstRowHeightConstraint = v4->_firstRowHeightConstraint;
    v4->_firstRowHeightConstraint = v10;

    topAnchor = [(UIView *)v4->_topRow topAnchor];
    topAnchor2 = [(UIView *)v4 topAnchor];
    v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v36[0] = v32;
    v36[1] = v4->_firstRowHeightConstraint;
    leadingAnchor = [(UIView *)v4->_topRow leadingAnchor];
    leadingAnchor2 = [(UIView *)v4 leadingAnchor];
    v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v36[2] = v29;
    widthAnchor = [(UIView *)v4->_topRow widthAnchor];
    widthAnchor2 = [(UIView *)v4 widthAnchor];
    v26 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.0];
    v36[3] = v26;
    topAnchor3 = [(UIView *)v4->_secondRow topAnchor];
    bottomAnchor = [(UIView *)v4->_topRow bottomAnchor];
    v23 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    v36[4] = v23;
    bottomAnchor2 = [(UIView *)v4->_secondRow bottomAnchor];
    bottomAnchor3 = [(UIView *)v4 bottomAnchor];
    v13 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v36[5] = v13;
    leadingAnchor3 = [(UIView *)v4->_secondRow leadingAnchor];
    leadingAnchor4 = [(UIView *)v4 leadingAnchor];
    v16 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v36[6] = v16;
    trailingAnchor = [(UIView *)v4->_secondRow trailingAnchor];
    trailingAnchor2 = [(UIView *)v4 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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
  layer = [(UIView *)v3 layer];
  [layer setHitTestsAsOpaque:1];

  return v3;
}

@end