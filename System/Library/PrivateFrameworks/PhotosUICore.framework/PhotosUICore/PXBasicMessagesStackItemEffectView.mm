@interface PXBasicMessagesStackItemEffectView
- (PXBasicMessagesStackItemEffectView)init;
- (void)setContentView:(id)view;
@end

@implementation PXBasicMessagesStackItemEffectView

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    [(PXBasicMessagesStackItemEffectView *)self bounds];
    [(UIView *)v7 setFrame:?];
    [(UIView *)v7 setAutoresizingMask:18];
    [(PXBasicMessagesStackItemEffectView *)self addSubview:v7];
    viewCopy = v7;
  }
}

- (PXBasicMessagesStackItemEffectView)init
{
  v5.receiver = self;
  v5.super_class = PXBasicMessagesStackItemEffectView;
  v2 = [(PXBasicMessagesStackItemEffectView *)&v5 init];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  [(PXBasicMessagesStackItemEffectView *)v2 setBackgroundColor:v3];

  [(PXBasicMessagesStackItemEffectView *)v2 setUserInteractionEnabled:0];
  return v2;
}

@end