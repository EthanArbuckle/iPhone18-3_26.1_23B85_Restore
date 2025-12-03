@interface TSWPDefaultGraphicalAttachmentRenderer
- (void)drawAttachment:(id)attachment inContext:(CGContext *)context selection:(id)selection;
@end

@implementation TSWPDefaultGraphicalAttachmentRenderer

- (void)drawAttachment:(id)attachment inContext:(CGContext *)context selection:(id)selection
{
  attachmentCopy = attachment;
  objc_msgSend_size(attachmentCopy, v6, v7);
  v9 = v8;
  v11 = v10;
  v14 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v12, v13, 0.578999996, 0.702000022, 0.910000026, 1.0);
  v17 = objc_msgSend_CGColor(v14, v15, v16);
  CGContextSetStrokeColorWithColor(context, v17);

  v20 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v18, v19, 0.833999991, 0.883000016, 0.967000008, 1.0);
  v23 = objc_msgSend_CGColor(v20, v21, v22);
  CGContextSetFillColorWithColor(context, v23);

  CGContextSetLineWidth(context, 1.0);
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = v9;
  v26.size.height = v11;
  CGContextFillRect(context, v26);
}

@end