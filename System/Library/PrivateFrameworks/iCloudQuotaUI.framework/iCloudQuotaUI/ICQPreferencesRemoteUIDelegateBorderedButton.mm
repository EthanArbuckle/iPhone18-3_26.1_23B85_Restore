@interface ICQPreferencesRemoteUIDelegateBorderedButton
- (void)drawRect:(CGRect)rect;
@end

@implementation ICQPreferencesRemoteUIDelegateBorderedButton

- (void)drawRect:(CGRect)rect
{
  v14.receiver = self;
  v14.super_class = ICQPreferencesRemoteUIDelegateBorderedButton;
  [(ICQPreferencesRemoteUIDelegateBorderedButton *)&v14 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  [(ICQPreferencesRemoteUIDelegateBorderedButton *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetLineWidth(CurrentContext, 1.0);
  v13 = [MEMORY[0x277D75348] colorWithWhite:0.78 alpha:1.0];
  CGContextSetStrokeColorWithColor(CurrentContext, [v13 CGColor]);

  CGContextMoveToPoint(CurrentContext, v5, v7);
  CGContextAddLineToPoint(CurrentContext, v9, v7);
  CGContextMoveToPoint(CurrentContext, v5, v11);
  CGContextAddLineToPoint(CurrentContext, v9, v11);
  CGContextStrokePath(CurrentContext);
}

@end