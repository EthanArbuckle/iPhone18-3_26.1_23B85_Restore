@interface _UITextAttachmentViewHelper
+ (id)helperForAttachment:(id)attachment;
- (void)removeView;
@end

@implementation _UITextAttachmentViewHelper

+ (id)helperForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v5 = objc_alloc_init(self);
  [v5 setAttachment:attachmentCopy];

  return v5;
}

- (void)removeView
{
  attachment = [(_UITextAttachmentViewHelper *)self attachment];
  attachmentCell = [attachment attachmentCell];
  [attachmentCell removeFromSuperview];
}

@end