@interface SiriSharedUIStandardVisualEffectView
- (void)layoutSubviews;
@end

@implementation SiriSharedUIStandardVisualEffectView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SiriSharedUIStandardVisualEffectView;
  [(SiriSharedUIStandardVisualEffectView *)&v4 layoutSubviews];
  backgroundView = self->_backgroundView;
  [(SiriSharedUIStandardVisualEffectView *)self bounds];
  [(UIView *)backgroundView setFrame:?];
}

@end