@interface _PUImageTextAttachmentViewProvider
- (void)loadView;
@end

@implementation _PUImageTextAttachmentViewProvider

- (void)loadView
{
  v4 = [(NSTextAttachmentViewProvider *)self textAttachment];
  v3 = [v4 imageView];
  [(NSTextAttachmentViewProvider *)self setView:v3];
}

@end