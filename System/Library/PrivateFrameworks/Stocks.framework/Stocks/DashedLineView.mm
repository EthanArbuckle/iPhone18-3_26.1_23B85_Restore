@interface DashedLineView
- (void)drawRect:(CGRect)rect;
@end

@implementation DashedLineView

- (void)drawRect:(CGRect)rect
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D75348] colorWithWhite:0.819607843 alpha:{1.0, rect.size.width, rect.size.height}];
  [v4 set];

  v5 = objc_opt_new();
  [v5 setLineWidth:RoundToPixel(0.5)];
  v7 = xmmword_26BAFE6B0;
  [v5 setLineDash:&v7 count:2 phase:1.0];
  v6 = RoundToPixel(0.5) * 0.5;
  [v5 moveToPoint:{0.0, v6}];
  [(DashedLineView *)self bounds];
  [v5 addLineToPoint:{CGRectGetMaxX(v9), v6}];
  [v5 stroke];
}

@end