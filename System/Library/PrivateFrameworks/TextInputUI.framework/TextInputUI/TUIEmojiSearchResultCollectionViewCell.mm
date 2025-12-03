@interface TUIEmojiSearchResultCollectionViewCell
+ (id)_createDraggableEmojiLabel;
+ (id)_createEmojiLabel;
- (TUIEmojiSearchResultCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setDisplayedEmojiString:(id)string animated:(BOOL)animated withAnimationOffset:(unint64_t)offset;
- (void)setDragEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation TUIEmojiSearchResultCollectionViewCell

- (void)setDragEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (objc_opt_respondsToSelector())
  {
    emojiLabel = self->_emojiLabel;

    [(_TUIKeyboardEmojiDraggableView *)emojiLabel setDragEnabled:enabledCopy];
  }
}

- (void)setDisplayedEmojiString:(id)string animated:(BOOL)animated withAnimationOffset:(unint64_t)offset
{
  animatedCopy = animated;
  stringCopy = string;
  if (![(NSAttributedString *)self->_displayedEmojiString isEqualToAttributedString:stringCopy])
  {
    v10 = self->_displayedEmojiString;
    objc_storeStrong(&self->_displayedEmojiString, string);
    [(_TUIKeyboardEmojiDraggableView *)self->_emojiLabel setAttributedText:self->_displayedEmojiString];
    if (animatedCopy)
    {
      v11 = offset * 0.03;
      ++self->_nestedAnimationCount;
      [(_TUIKeyboardEmojiDraggableView *)self->_emojiLabel setHidden:1];
      if (!self->_animationFromLabel)
      {
        _createEmojiLabel = [objc_opt_class() _createEmojiLabel];
        animationFromLabel = self->_animationFromLabel;
        self->_animationFromLabel = _createEmojiLabel;

        [(UILabel *)self->_animationFromLabel setAttributedText:v10];
        [(_TUIKeyboardEmojiDraggableView *)self->_emojiLabel frame];
        [(UILabel *)self->_animationFromLabel setFrame:?];
        [(TUIEmojiSearchResultCollectionViewCell *)self addSubview:self->_animationFromLabel];
        v34[4] = self;
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __95__TUIEmojiSearchResultCollectionViewCell_setDisplayedEmojiString_animated_withAnimationOffset___block_invoke;
        v35[3] = &unk_1E72D83A0;
        v35[4] = self;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __95__TUIEmojiSearchResultCollectionViewCell_setDisplayedEmojiString_animated_withAnimationOffset___block_invoke_2;
        v34[3] = &unk_1E72D8488;
        [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v35 usingSpringWithDamping:v34 initialSpringVelocity:0.4 options:v11 animations:1.0 completion:1.0];
      }

      animationToLabel = self->_animationToLabel;
      if (animationToLabel)
      {
        v15 = animationToLabel;
        v16 = MEMORY[0x1E69DD250];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __95__TUIEmojiSearchResultCollectionViewCell_setDisplayedEmojiString_animated_withAnimationOffset___block_invoke_3;
        v32[3] = &unk_1E72D83A0;
        v33 = v15;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __95__TUIEmojiSearchResultCollectionViewCell_setDisplayedEmojiString_animated_withAnimationOffset___block_invoke_4;
        v30[3] = &unk_1E72D8488;
        v31 = v33;
        v17 = v33;
        [v16 animateWithDuration:4 delay:v32 options:v30 animations:0.2 completion:0.0];
      }

      _createEmojiLabel2 = [objc_opt_class() _createEmojiLabel];
      v19 = self->_animationToLabel;
      self->_animationToLabel = _createEmojiLabel2;

      [(UILabel *)self->_animationToLabel setAttributedText:self->_displayedEmojiString];
      [(_TUIKeyboardEmojiDraggableView *)self->_emojiLabel frame];
      [(UILabel *)self->_animationToLabel setFrame:?];
      [(TUIEmojiSearchResultCollectionViewCell *)self addSubview:self->_animationToLabel];
      v20 = self->_animationToLabel;
      [(UILabel *)v20 setAlpha:0.0];
      CGAffineTransformMakeScale(&v29, 0.001, 0.001);
      v28 = v29;
      [(UILabel *)v20 setTransform:&v28];
      v21 = MEMORY[0x1E69DD250];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __95__TUIEmojiSearchResultCollectionViewCell_setDisplayedEmojiString_animated_withAnimationOffset___block_invoke_5;
      v26[3] = &unk_1E72D83A0;
      v27 = v20;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __95__TUIEmojiSearchResultCollectionViewCell_setDisplayedEmojiString_animated_withAnimationOffset___block_invoke_6;
      v23[3] = &unk_1E72D7F60;
      v24 = v27;
      selfCopy = self;
      v22 = v27;
      [v21 animateWithDuration:4 delay:v26 usingSpringWithDamping:v23 initialSpringVelocity:0.4 options:v11 animations:1.0 completion:1.0];
    }
  }
}

uint64_t __95__TUIEmojiSearchResultCollectionViewCell_setDisplayedEmojiString_animated_withAnimationOffset___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 648) setAlpha:0.0];
  CGAffineTransformMakeScale(&v5, 0.001, 0.001);
  v2 = *(*(a1 + 32) + 648);
  v4 = v5;
  return [v2 setTransform:&v4];
}

void __95__TUIEmojiSearchResultCollectionViewCell_setDisplayedEmojiString_animated_withAnimationOffset___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 648) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 648);
  *(v2 + 648) = 0;
}

uint64_t __95__TUIEmojiSearchResultCollectionViewCell_setDisplayedEmojiString_animated_withAnimationOffset___block_invoke_3(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 0.001, 0.001);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

uint64_t __95__TUIEmojiSearchResultCollectionViewCell_setDisplayedEmojiString_animated_withAnimationOffset___block_invoke_4(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) removeFromSuperview];
  }

  return result;
}

uint64_t __95__TUIEmojiSearchResultCollectionViewCell_setDisplayedEmojiString_animated_withAnimationOffset___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v2 setTransform:v5];
}

uint64_t __95__TUIEmojiSearchResultCollectionViewCell_setDisplayedEmojiString_animated_withAnimationOffset___block_invoke_6(uint64_t a1)
{
  result = [*(a1 + 32) removeFromSuperview];
  --*(*(a1 + 40) + 664);
  v3 = *(a1 + 40);
  if (!*(v3 + 664))
  {
    v4 = *(v3 + 656);
    *(v3 + 656) = 0;

    v5 = *(*(a1 + 40) + 688);

    return [v5 setHidden:0];
  }

  return result;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v8.receiver = self;
  v8.super_class = TUIEmojiSearchResultCollectionViewCell;
  [(TUIEmojiSearchResultCollectionViewCell *)&v8 setHighlighted:?];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  if (highlightedCopy)
  {
    systemFillColor = [MEMORY[0x1E69DC888] systemFillColor];

    clearColor = systemFillColor;
  }

  backgroundView = [(TUIEmojiSearchResultCollectionViewCell *)self backgroundView];
  [backgroundView setBackgroundColor:clearColor];
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = TUIEmojiSearchResultCollectionViewCell;
  [(TUIEmojiSearchResultCollectionViewCell *)&v21 layoutSubviews];
  [(TUIEmojiSearchResultCollectionViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  backgroundView = [(TUIEmojiSearchResultCollectionViewCell *)self backgroundView];
  [backgroundView setFrame:{v4, v6, v8, v10}];

  contentView = [(TUIEmojiSearchResultCollectionViewCell *)self contentView];
  [contentView bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  UIRectGetCenter();
  [(_TUIKeyboardEmojiDraggableView *)self->_emojiLabel setCenter:?];
  [(_TUIKeyboardEmojiDraggableView *)self->_emojiLabel setBounds:v14, v16, v18, v20];
}

- (TUIEmojiSearchResultCollectionViewCell)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = TUIEmojiSearchResultCollectionViewCell;
  v3 = [(TUIEmojiSearchResultCollectionViewCell *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    _createDraggableEmojiLabel = [objc_opt_class() _createDraggableEmojiLabel];
    emojiLabel = v3->_emojiLabel;
    v3->_emojiLabel = _createDraggableEmojiLabel;

    contentView = [(TUIEmojiSearchResultCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_emojiLabel];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(TUIEmojiSearchResultCollectionViewCell *)v3 setBackgroundColor:clearColor];

    v8 = objc_alloc(MEMORY[0x1E69DD250]);
    v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(TUIEmojiSearchResultCollectionViewCell *)v3 setBackgroundView:v9];

    backgroundView = [(TUIEmojiSearchResultCollectionViewCell *)v3 backgroundView];
    layer = [backgroundView layer];
    [layer setCornerRadius:5.0];

    backgroundView2 = [(TUIEmojiSearchResultCollectionViewCell *)v3 backgroundView];
    layer2 = [backgroundView2 layer];
    [layer2 setMasksToBounds:1];
  }

  return v3;
}

+ (id)_createEmojiLabel
{
  v2 = objc_alloc(MEMORY[0x1E69DCC10]);
  v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v3 setTextAlignment:1];
  [v3 setAdjustsFontSizeToFitWidth:1];
  [v3 setBaselineAdjustment:1];

  return v3;
}

+ (id)_createDraggableEmojiLabel
{
  v3 = [objc_alloc(NSClassFromString(&cfstr_Uikeyboardemoj.isa)) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  if (objc_opt_respondsToSelector())
  {
    _createEmojiLabel = v3;
  }

  else
  {
    _createEmojiLabel = [self _createEmojiLabel];
  }

  v5 = _createEmojiLabel;

  return v5;
}

@end