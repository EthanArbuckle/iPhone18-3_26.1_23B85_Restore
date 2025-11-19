@interface PXBasicMessagesStackItemEffectView
- (PXBasicMessagesStackItemEffectView)init;
- (void)setContentView:(id)a3;
@end

@implementation PXBasicMessagesStackItemEffectView

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    v7 = v5;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    [(PXBasicMessagesStackItemEffectView *)self bounds];
    [(UIView *)v7 setFrame:?];
    [(UIView *)v7 setAutoresizingMask:18];
    [(PXBasicMessagesStackItemEffectView *)self addSubview:v7];
    v5 = v7;
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