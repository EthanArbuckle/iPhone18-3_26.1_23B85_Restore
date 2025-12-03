@interface WFReverseCircleRenderer
- (void)fillPath:(CGPath *)path inContext:(CGContext *)context;
@end

@implementation WFReverseCircleRenderer

- (void)fillPath:(CGPath *)path inContext:(CGContext *)context
{
  [(MKOverlayRenderer *)self rectForMapRect:*MEMORY[0x277CD4BB8], *(MEMORY[0x277CD4BB8] + 8), *(MEMORY[0x277CD4BB8] + 16), *(MEMORY[0x277CD4BB8] + 24)];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  CGContextSaveGState(context);
  v17.origin.x = v8;
  v17.origin.y = v10;
  v17.size.width = v12;
  v17.size.height = v14;
  CGContextAddRect(context, v17);
  CGContextAddPath(context, path);
  CGContextClip(context);
  fillColor = [(MKOverlayPathRenderer *)self fillColor];
  CGContextSetFillColorWithColor(context, [fillColor CGColor]);

  v18.origin.x = v8;
  v18.origin.y = v10;
  v18.size.width = v12;
  v18.size.height = v14;
  CGContextFillRect(context, v18);

  CGContextRestoreGState(context);
}

@end