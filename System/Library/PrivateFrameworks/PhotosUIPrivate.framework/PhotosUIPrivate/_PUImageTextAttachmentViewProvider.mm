@interface _PUImageTextAttachmentViewProvider
- (void)loadView;
@end

@implementation _PUImageTextAttachmentViewProvider

- (void)loadView
{
  textAttachment = [(NSTextAttachmentViewProvider *)self textAttachment];
  imageView = [textAttachment imageView];
  [(NSTextAttachmentViewProvider *)self setView:imageView];
}

@end