@interface SKUIOverlayContainerView
- (void)setFrame:(CGRect)frame;
@end

@implementation SKUIOverlayContainerView

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = SKUIOverlayContainerView;
  [(SKUIOverlayContainerView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(SKUIOverlayContainerView *)self sendActionsForControlEvents:4096];
}

@end