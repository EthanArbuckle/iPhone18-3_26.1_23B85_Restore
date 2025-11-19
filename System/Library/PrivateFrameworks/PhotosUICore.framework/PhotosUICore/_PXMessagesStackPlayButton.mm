@interface _PXMessagesStackPlayButton
- (_PXMessagesStackPlayButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation _PXMessagesStackPlayButton

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _PXMessagesStackPlayButton;
  [(_PXMessagesStackPlayButton *)&v3 layoutSubviews];
  [(_PXMessagesStackPlayButton *)self bounds];
  PXRectGetCenter();
}

- (_PXMessagesStackPlayButton)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _PXMessagesStackPlayButton;
  v3 = [(_PXMessagesStackPlayButton *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DD250] px_videoOverlayButtonWithStyle:1];
    [(UIView *)v4 setUserInteractionEnabled:0];
    [(_PXMessagesStackPlayButton *)v3 addSubview:v4];
    videoOverlayButton = v3->_videoOverlayButton;
    v3->_videoOverlayButton = v4;
  }

  return v3;
}

@end