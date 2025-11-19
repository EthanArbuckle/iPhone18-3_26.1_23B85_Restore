@interface VKSelectableBarButtonContainerView
- (CGSize)_buttonSize;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIImage)image;
- (VKSelectableBarButtonContainerView)init;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setImage:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)updateForMiniBarState:(BOOL)a3;
@end

@implementation VKSelectableBarButtonContainerView

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = VKSelectableBarButtonContainerView;
  [(VKSelectableBarButtonContainerView *)&v4 didMoveToWindow];
  v3 = [(VKSelectableBarButtonContainerView *)self window];

  if (v3)
  {
    [(VKSelectableBarButtonContainerView *)self setNeedsLayout];
    [(VKSelectableBarButtonContainerView *)self layoutIfNeeded];
  }
}

- (VKSelectableBarButtonContainerView)init
{
  v7.receiver = self;
  v7.super_class = VKSelectableBarButtonContainerView;
  v2 = [(VKSelectableBarButtonContainerView *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_width = 44.0;
    v4 = [MEMORY[0x1E69DC738] buttonWithType:1];
    button = v3->_button;
    v3->_button = v4;

    [(UIButton *)v3->_button setClipsToBounds:1];
    v3->_padding = 4.0;
    v3->_compactPadding = 3.0;
    v3->_cornerRadiusRatio = 0.5;
    [(VKSelectableBarButtonContainerView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(VKSelectableBarButtonContainerView *)v3 addSubview:v3->_button];
  }

  return v3;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(VKSelectableBarButtonContainerView *)self button];
  [v5 setImage:v4 forState:0];

  v6 = [(VKSelectableBarButtonContainerView *)self button];
  [v6 setContentMode:4];

  [(VKSelectableBarButtonContainerView *)self setNeedsLayout];
}

- (UIImage)image
{
  v2 = [(VKSelectableBarButtonContainerView *)self button];
  v3 = [v2 imageForState:0];

  return v3;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = VKSelectableBarButtonContainerView;
  [(VKSelectableBarButtonContainerView *)&v18 layoutSubviews];
  v3 = [(VKSelectableBarButtonContainerView *)self button];
  [v3 intrinsicContentSize];
  v5 = v4;
  [(VKSelectableBarButtonContainerView *)self bounds];
  v10 = VKMCenterOfRect(v6, v7, v8, v9);
  [v3 setFrame:{VKMRectWithCenterAndSize(v10, v11, v5)}];
  [(VKSelectableBarButtonContainerView *)self cornerRadiusRatio];
  v13 = v5 * v12;
  v14 = [v3 layer];
  [v14 setCornerRadius:v13];

  v15 = *MEMORY[0x1E69796E8];
  v16 = [v3 layer];
  [v16 setCornerCurve:v15];

  v17 = [v3 layer];
  [v17 setMasksToBounds:1];
}

- (void)updateForMiniBarState:(BOOL)a3
{
  [(VKSelectableBarButtonContainerView *)self setNeedsLayout];

  [(VKSelectableBarButtonContainerView *)self layoutIfNeeded];
}

- (CGSize)intrinsicContentSize
{
  [(VKSelectableBarButtonContainerView *)self _buttonSize];
  if (v2 < 44.0)
  {
    v2 = 44.0;
  }

  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(VKSelectableBarButtonContainerView *)self button];
  [v6 sizeThatFits:{width, height}];
  v8 = v7;

  [(VKSelectableBarButtonContainerView *)self width];
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  self->_selected = a3;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v5 = [(VKSelectableBarButtonContainerView *)self button];
  [v5 setSelected:v3];

  v6 = MEMORY[0x1E6979518];

  [v6 commit];
}

- (CGSize)_buttonSize
{
  v3 = [(VKSelectableBarButtonContainerView *)self button];
  [v3 intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  v8 = [(VKSelectableBarButtonContainerView *)self traitCollection];
  if ([v8 vk_hasCompactHeight])
  {
    [(VKSelectableBarButtonContainerView *)self compactPadding];
  }

  else
  {
    [(VKSelectableBarButtonContainerView *)self padding];
  }

  v10 = v9;
  if (v5 < v7)
  {
    v5 = v7;
  }

  v11 = v5 + v10;
  v12 = v5 + v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end