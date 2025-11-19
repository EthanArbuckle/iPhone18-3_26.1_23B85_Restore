@interface WFReverseCircleRenderer
- (void)fillPath:(CGPath *)a3 inContext:(CGContext *)a4;
@end

@implementation WFReverseCircleRenderer

- (void)fillPath:(CGPath *)a3 inContext:(CGContext *)a4
{
  [(MKOverlayRenderer *)self rectForMapRect:*MEMORY[0x277CD4BB8], *(MEMORY[0x277CD4BB8] + 8), *(MEMORY[0x277CD4BB8] + 16), *(MEMORY[0x277CD4BB8] + 24)];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  CGContextSaveGState(a4);
  v17.origin.x = v8;
  v17.origin.y = v10;
  v17.size.width = v12;
  v17.size.height = v14;
  CGContextAddRect(a4, v17);
  CGContextAddPath(a4, a3);
  CGContextClip(a4);
  v15 = [(MKOverlayPathRenderer *)self fillColor];
  CGContextSetFillColorWithColor(a4, [v15 CGColor]);

  v18.origin.x = v8;
  v18.origin.y = v10;
  v18.size.width = v12;
  v18.size.height = v14;
  CGContextFillRect(a4, v18);

  CGContextRestoreGState(a4);
}

@end