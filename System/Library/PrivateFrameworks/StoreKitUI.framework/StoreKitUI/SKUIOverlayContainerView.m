@interface SKUIOverlayContainerView
- (void)setFrame:(CGRect)a3;
@end

@implementation SKUIOverlayContainerView

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = SKUIOverlayContainerView;
  [(SKUIOverlayContainerView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(SKUIOverlayContainerView *)self sendActionsForControlEvents:4096];
}

@end