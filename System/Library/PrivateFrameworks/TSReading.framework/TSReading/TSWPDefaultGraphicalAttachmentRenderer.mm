@interface TSWPDefaultGraphicalAttachmentRenderer
- (void)drawAttachment:(id)a3 inContext:(CGContext *)a4 selection:(id)a5;
@end

@implementation TSWPDefaultGraphicalAttachmentRenderer

- (void)drawAttachment:(id)a3 inContext:(CGContext *)a4 selection:(id)a5
{
  [a3 size];
  v7 = v6;
  v9 = v8;
  CGContextSetStrokeColorWithColor(a4, [objc_msgSend(MEMORY[0x277D6C2A8] colorWithRed:0.578999996 green:0.702000022 blue:0.910000026 alpha:{1.0), "CGColor"}]);
  CGContextSetFillColorWithColor(a4, [objc_msgSend(MEMORY[0x277D6C2A8] colorWithRed:0.833999991 green:0.883000016 blue:0.967000008 alpha:{1.0), "CGColor"}]);
  CGContextSetLineWidth(a4, 1.0);
  v10 = 0;
  v11 = 0;
  v12 = v7;
  v13 = v9;

  CGContextFillRect(a4, *&v10);
}

@end