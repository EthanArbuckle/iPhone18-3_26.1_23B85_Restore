@interface _UITextAttachmentViewHelper
+ (id)helperForAttachment:(id)a3;
- (void)removeView;
@end

@implementation _UITextAttachmentViewHelper

+ (id)helperForAttachment:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setAttachment:v4];

  return v5;
}

- (void)removeView
{
  v3 = [(_UITextAttachmentViewHelper *)self attachment];
  v2 = [v3 attachmentCell];
  [v2 removeFromSuperview];
}

@end