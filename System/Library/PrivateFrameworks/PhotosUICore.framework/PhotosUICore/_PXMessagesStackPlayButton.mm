@interface _PXMessagesStackPlayButton
- (_PXMessagesStackPlayButton)initWithFrame:(CGRect)frame;
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

- (_PXMessagesStackPlayButton)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _PXMessagesStackPlayButton;
  v3 = [(_PXMessagesStackPlayButton *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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