@interface VKSelectableBarButtonContainerView
- (CGSize)_buttonSize;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIImage)image;
- (VKSelectableBarButtonContainerView)init;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setImage:(id)image;
- (void)setSelected:(BOOL)selected;
- (void)updateForMiniBarState:(BOOL)state;
@end

@implementation VKSelectableBarButtonContainerView

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = VKSelectableBarButtonContainerView;
  [(VKSelectableBarButtonContainerView *)&v4 didMoveToWindow];
  window = [(VKSelectableBarButtonContainerView *)self window];

  if (window)
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

- (void)setImage:(id)image
{
  imageCopy = image;
  button = [(VKSelectableBarButtonContainerView *)self button];
  [button setImage:imageCopy forState:0];

  button2 = [(VKSelectableBarButtonContainerView *)self button];
  [button2 setContentMode:4];

  [(VKSelectableBarButtonContainerView *)self setNeedsLayout];
}

- (UIImage)image
{
  button = [(VKSelectableBarButtonContainerView *)self button];
  v3 = [button imageForState:0];

  return v3;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = VKSelectableBarButtonContainerView;
  [(VKSelectableBarButtonContainerView *)&v18 layoutSubviews];
  button = [(VKSelectableBarButtonContainerView *)self button];
  [button intrinsicContentSize];
  v5 = v4;
  [(VKSelectableBarButtonContainerView *)self bounds];
  v10 = VKMCenterOfRect(v6, v7, v8, v9);
  [button setFrame:{VKMRectWithCenterAndSize(v10, v11, v5)}];
  [(VKSelectableBarButtonContainerView *)self cornerRadiusRatio];
  v13 = v5 * v12;
  layer = [button layer];
  [layer setCornerRadius:v13];

  v15 = *MEMORY[0x1E69796E8];
  layer2 = [button layer];
  [layer2 setCornerCurve:v15];

  layer3 = [button layer];
  [layer3 setMasksToBounds:1];
}

- (void)updateForMiniBarState:(BOOL)state
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  button = [(VKSelectableBarButtonContainerView *)self button];
  [button sizeThatFits:{width, height}];
  v8 = v7;

  [(VKSelectableBarButtonContainerView *)self width];
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  self->_selected = selected;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  button = [(VKSelectableBarButtonContainerView *)self button];
  [button setSelected:selectedCopy];

  v6 = MEMORY[0x1E6979518];

  [v6 commit];
}

- (CGSize)_buttonSize
{
  button = [(VKSelectableBarButtonContainerView *)self button];
  [button intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  traitCollection = [(VKSelectableBarButtonContainerView *)self traitCollection];
  if ([traitCollection vk_hasCompactHeight])
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